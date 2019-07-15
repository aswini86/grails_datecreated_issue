package grailsdatecreatedissue

class Location {
    static final int NEVER_ACTIVATED = 0;
    static final int ACTIVATED  = 1; // only state the Alerts will work in. Set by Sensor saving data.
    static final int DEACTIVATED = 2; // not used yet...
    static final int PAUSED = 4; // not used yet...
	
	static final int NONE = -1; // Used as a Null int.
	
	static final int TIMEOUT_STATUS_UNKNOWN = -1
	static final int TIMEOUT_STATUS_GOOD = 1
	static final int TIMEOUT_STATUS_OVERTIME = 2
	
	// This bits indicate what traffic should only be accepted by a secure gateway.
	static final int SECURE_TRAFFIC_NONE = 0
	static final int SECURE_TRAFFIC_HEARTBEAT = 1
	static final int SECURE_TRAFFIC_READINGS = 2
	
	static final int SENSOR_ASSIGNMENT_BEHAVIOUR_FLOAT_TO_REPORTING_LOCATION = 1 //  Sensor netnum is assigned to incomming reading netnum (or dirived form gateway lookup). 
	static final int SENSOR_ASSIGNMENT_BEHAVIOUR_STAY_AT_ASSIGNED_LOCATION = 2 // Sensor netnum stays as assigned in the DB even if inconning read netnum  (or dirived form gateway lookup) is different.

	// used to controll pausing alerts completely at a location
	static final int PAUSE_ENTIRE_LOCATION_NONE = 0
	static final int PAUSE_ENTIRE_LOCATION_ALL_ALERTS = 1
	
		
	//  This is a unique key for a location.  It's poorly named as it was historically WSN network ID
	//  Wireless Radio Network.   Negative numbers are roll-up locations in the location hierarchy.
    int netnum = NONE
	//  The gmac of the last gateway that issued a heartbeat (time/getV1) request at this location.
	//  There can be more than one gateway 'pointing' to a location, for example when replacing the gateway with a newer one.
	long gmac = NONE
    int active = NEVER_ACTIVATED
	long parentID = NONE  // If this location is part of a group, ID of the parent location.
    String name = ""
    String address = ""
    String city = ""
    String state = ""
    String postalCode  = "" // Zip in the US
    String country = ""
    String websiteURL = ""
    String emailAddress = ""
    String cellPhone = "" // This is the stores main phone number, this is a poor name for it.
	String generalPhoneExt = ""  //  Used to dial though auto attendant if present.  Set by the customer.
    //String loginUserName = "" //  This is a foreign key to the Spring Security domain user.username
    int hrsOffsetFromUTC = 0
    Date  dateCreated = new Date()
    //Date  lastUpdated = new Date()
    Date  lastCommunication = new Date()  // Updated on any traffic from the remote network
    Date  deactivationDate = null
    String tempScale = "fahrenheit" // Preferred scale for this location
    String timeScale = "week" //  Display temp values for year, month, week, day.
    Date graphStartTime = null //  This is the start and stop of a custom time, if the timescale is null, use graphStartTime / graphEndTime
    Date graphEndTime = null //  end of a custom time range on the graph, if the timescale is null, use graphStartTime / graphEndTime
	// The Application string  defines how the app acts, parameters it takes, UI ,etc.  Default "temp" is temp monitoring.
	// Versioning is done in the string.  There's no expected format and it's a pure lookup.
	String application = "temp v1"
	Boolean preventTimeoutOverride = true  // if true, prevent's a sub location from overriding the global timeout setting at this level
	Boolean sendAlertsFromSubLocations = false  // If alerts happen at lower locations, users at this location receive them.  Refactor fine grain alerts per user later.
	int alertEscalationDelayMinutes = 30 // When a location is a parent, wait this many minutes before sending alerts to this location's users regarding uncleared or unacknowledged alerts
	int activeAlertCount = 0  // incremented by the alert scanner job and decremented by clearing events
	int unacknowledgedAlertCount = 0  // incremented by the alert scanner job and  decremented by acknowledgment actions
	int cleardAlertCount = 0  // incremented acknowledgment actions
	int currTimeoutStatus = TIMEOUT_STATUS_UNKNOWN // Computed on the fly and used in the UI to show if this locations last updated timestamp is beyond timeout.  Sensors have this also.
	String jversion = ""
	String aversion = ""
	int channel = NONE  // The WSN channel this GW is operating on.
	long industryID = NONE
	long gatewayID = NONE
    //int sensorCount
    //int repeaterCount
    //static hasMany = [sensors:Sensor, repeaters:Repeater ]
	//Added as part of new user management enhancement
	long customerID = NONE
	int secureTrafficBitfield = SECURE_TRAFFIC_NONE
	int senosrAssignmentBehaviour = SENSOR_ASSIGNMENT_BEHAVIOUR_FLOAT_TO_REPORTING_LOCATION
	int	pauseSetting = PAUSE_ENTIRE_LOCATION_NONE;


	// [Terry] added more nulables here.  There is no reason to have these filled in if there not needed.
	static constraints = {
		deactivationDate nullable:true
		lastCommunication nullable:true
		name nullable:true
		address nullable:true
		city nullable:true
		state nullable:true
		postalCode nullable:true
		websiteURL nullable:true
		cellPhone nullable:true
		generalPhoneExt  nullable:true
		emailAddress email: true, nullable:true
		aversion nullable: true
		jversion nullable:true
		application nullable:true
		timeScale nullable:true
		graphStartTime nullable:true
		graphEndTime nullable:true
	}
	
	static mapping = {
		autoTimestamp false
	
	  }
	
}
