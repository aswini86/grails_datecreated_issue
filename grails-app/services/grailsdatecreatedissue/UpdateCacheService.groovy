package grailsdatecreatedissue

import java.util.Date
import java.util.Hashtable
import java.util.concurrent.ConcurrentHashMap
import groovy.transform.Synchronized
import grails.gorm.transactions.Transactional

@Transactional
class UpdateCacheService {

	def sessionFactory  // to manually flush the session

	static transactional = true;
	
	// Must be a singleton to maintain exactly one instance of the dirty object to update.
	static scope = "singleton";
	
	// I implemented the location cache as a hashmap vs. a queue because I wanted to reduce the writes
	// to the database when it is updated.
	
	def private ConcurrentHashMap<Long, Location>	locationTable 		= new ConcurrentHashMap<Long, Location>();
	def private ConcurrentHashMap<Long, Boolean> 	locationDirtyTable	= new ConcurrentHashMap<Long, Boolean>();

	def private final locationLock = new Object()

	def flushAll() {
		//log.debug ("flush dirty locations")
		flushLocationCache()
		def session = sessionFactory.currentSession
		//session.flush()
		session.clear()
	}
    
    // Update a location in the cache.  If it does not exist, read it in from SQL.
	// Incoming 'updates' maps could have version numbers.  Strip them and just merge.
	// as that's almost always the right thing to do.
	@Synchronized("locationLock")
	def Location updateLocation (long id, Map updates) {
		log.debug ("updateLocation (id =-- " + id + ", updates = " + updates + ")")
		updates.remove ('version')
		def l = loadLocation(id)
		if (l)
			{
			l.properties = updates
			println "cache l val----"+l
			locationDirtyTable.put(id, true)  // do this first to avoid the race between updating this cache and flushing it to the DB
			locationTable.put(id, l)
			log.debug("locationTable values----${locationTable}")
			}
		return l
	}

	@Synchronized("locationLock")
	def Location loadLocation(long id) {
		def l = locationTable.get(id)  // cache lookup.
		if (!l)  // not found, look in the DB
			{
			l = Location.read(id)  //  read vs. get is is critical.  Threads with hibernate sessions outside this service should not attach for update.
			if (l)
				{
				locationTable.put(id, l)
				}
			else
				{
				log.error ("Location NOT found in DB for ID:" + id)
				}
			}
		return l
	}

	//  Save the location cache to the DB.  This is called by a job every few seconds.
	@Synchronized("locationLock")
	def flushLocationCache() {
		println "came into flush location-------------"
		def Location l
		def savedCount = 0
		def key = 0L
		Iterator it = locationDirtyTable.keySet().iterator();
		while (it.hasNext())
			{
			key = (Long)it.next();
			if (locationDirtyTable.get(key))
				{
				locationDirtyTable.put (key, false)  // do this first.  If we did it after a successful save, Another thread could invalidate the dirty table after the save but before clearing this.
				l = (Location)locationTable.get(key)
					// try {
						//l = l.merge(flush: true)
						if (l.save(flush:true))  // try this to see if the trueUpLocationCounts thread works again.
						//if(l)
							{
							locationTable.put(key, l)  // The version number changes on save.
							savedCount++
							//log.debug ("Done Saving Location name " + l.name + " with key: " + key + ", version: " + locationTable.get(key).version)
							
							}
						else
							{
							if (l) {   // Safety check vs. NPE in a some strange unexpected condition
								l.errors.each {
									log.error( it )
									}
								}
							locationDirtyTable.put (key, true)  // save failed, still dirty
							log.error ("Could not save Location with key " + key + ", version: " + locationTable.get(key)?.version + " Marking as dirty again")
							}
					// } catch (all) {
					// 	def lRead = Location.read(l.id)  // Ignore the update and read the gateway again.
					// 	locationTable.put(lRead.id, lRead)  // The Version number changes on save.
					// 	locationDirtyTable.put(lRead.id, true)  // Write again next flush for good measure
					// 	log.error ("Exception was cought trying to save location with name = " + l.name + " and key = " + key);
					// 	log.error ("Exception = " + all);
					// }
				}
			}
		log.debug('Done saving ' + savedCount + ' locations')
	}
}
