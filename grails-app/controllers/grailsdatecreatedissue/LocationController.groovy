package grailsdatecreatedissue

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import java.util.concurrent.ConcurrentHashMap
import grails.gorm.transactions.*

@Secured(['ROLE_ADMIN'])
class LocationController {

	static allowedMethods = [save: ["GET", "POST"], update: ["GET", "POST"], delete: "POST"]
	def private ConcurrentHashMap<Long, Location> locationTable = new ConcurrentHashMap<Long, Location>();
	//def exportService;
	def updateCacheService
	def SpringSecurityService

    def index = {
		redirect(action: "list", params: params)
	}

	@Secured(['ROLE_ADMIN'])
	def list() {
		//loginLocation = locationService.getLoginLocation(params.netnum).getLocation()
		def locationInstance = new Location(params)
		params.max = Math.min(params.max ? params.int('max') : 500, 500)
		[locationInstanceList: Location.list(params), locationInstanceTotal: Location.count(),locationInstance:locationInstance]
	}

	@Secured(['ROLE_ADMIN'])
	def edit () {
		
		def location = Location.get(params.id)
		if (!location) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'location.label', default: 'Location'), params.id])}"
			redirect(action: "list")
		}
		
	return [location: location]	
	}
	
	def Location loadLocation(long id) {
		def l = locationTable.get(id)  // cache lookup.
		if (!l)  // not found, look in the DB
			{
			l = Location.get(id)  //  read vs. get is is critical.  Threads with hibernate sessions outside this service should not attach for update.
			println "came to update-------"+l
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

def update () {
		// def Location l
		// def key = (Long.valueOf(params.id, 10)).longValue()
		//def locationInstance = Location.get(params.id)
		def location = new Location(params)  // just to check for constraint errors
		// def locationVal = loadLocation(key)
		// params.remove ('version')
		// if (locationVal) {
		// 	locationVal.properties = params
		// 	locationTable.put(key,locationVal)
		// }
		log.debug("location val ----${locationVal.properties}")

		if(params.parentNetnum != null && params.parentNetnum.length() > 0) {
			parentLocation = locationService.getLoginLocation(params.parentNetnum).getLocation()
		}
		
		
		//  Checkbox impl in form only sends data when checked, also this ck box is conditionally rendered.
		if(params?.formName == 'alertContacts') {
			if( params?.sendAlertsFromSubLocationsCkbox == 'on') {
				params.sendAlertsFromSubLocations = true
			} else {
				params.sendAlertsFromSubLocations = false
			}
		}
		if(params?.formName == 'alertContacts') {
			if( params?.pauseSettingCkbox == 'on') {
				params.pauseSetting = Location.PAUSE_ENTIRE_LOCATION_ALL_ALERTS
			} else {
				params.pauseSetting = Location.PAUSE_ENTIRE_LOCATION_NONE
			}
		}
		
		log.debug ("params = "  +params)
		
		// start and end params are set by the sensor page when changing the graph view to a custom selection.
		if (params.start) params.graphStartTime = new Date(params.long('start'))  // convert longs to dates for DB insertion.
		if (params.end)   params.graphEndTime = new Date(params.long('end')) // convert longs to dates for DB insertion.
		
		//log.debug ("Point 2 Location.update, about to validate")
		
		
		if (params.skipValidation) {
			location = updateCacheService.updateLocation((Long.valueOf(params.id, 10)).longValue(), params)
			render ("OK")
		}
		
		else {
			location.validate()
			//log.debug ("Point 3 Location.update, post validate")
				
			if (!location.hasErrors() /* && locationInstance.save(flush: true) */) {
				//log.debug ("Point 4 Location.update, no errors")
					
				//log.debug ("updateCacheService.updateLocation(params.id, params == " + params + ")")
				if(params.id!="")
					// log.debug("came into location controller---")
					// log.debug("key val---${key}")
					// l = (Location)locationTable.get(key)
					// log.debug("l val---${l.properties}")
					// l.save(save:true)

					location = updateCacheService.updateLocation((Long.valueOf(params.id, 10)).longValue(), params)
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'location.label', default: 'Location'), location.name])}"
				if (params.noShow) {
					render ("OK")
				} else {
					redirect(action: "show", id: location.id,locationInstance: location)
				}
				
			} else {
				log.debug ("Point 5 Location.update, has errors")
				
			    location.errors.allErrors.each {
					log.debug ("Location.update validation errors: " + it)
					}

				render(view: "edit", model:  [location: location,parentLocation:parentLocation])
			}
		}
		//}
		//else {
		//flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'location.label', default: 'Location'), params.id])}"
		//redirect(action: "list")
		//}
	}
	
	@Secured(['ROLE_ADMIN'])
	def show () {
		def location = Location.get(params.id)
		if (!location) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'location.label', default: 'Location'), params.id])}"
			redirect(action: "list",locationInstance: location)
		}
	
	if(params.parentNetnum != null && params.parentNetnum.length() > 0) {
			parentLocation = locationService.getLoginLocation(params.parentNetnum).getLocation()
		}
		return [location: location]
		
	}
}
