package grailsdatecreatedissue

class Customer {
	String name;
	String address;
	String phoneNumber;
	Boolean isSSO = false;  // newly added field to check this customer is under SSO
	String idpEntityId;		// unique field to find identity providers of the customer
	String defaultLocation; // default location name of the customer to assign new user login on SSO
	
	static constraints = {
		idpEntityId blank: true, nullable: true
		defaultLocation blank:true, nullable:true
	}
	
}
