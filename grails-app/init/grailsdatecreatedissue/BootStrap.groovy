package grailsdatecreatedissue

import grails.util.GrailsUtil
class BootStrap {

	def grailsApplication

    def init = { servletContext ->

    	def adminEmail=grailsApplication.config.grailsdatecreatedissue.admin.email;
		def adminPhone=grailsApplication.config.grailsdatecreatedissue.admin.phone;
		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		def locationAdminRole = Role.findByAuthority('ROLE_LOCATION_ADMIN') ?: new Role(authority: 'ROLE_LOCATION_ADMIN').save(failOnError: true)
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
		def adminUser = User.findByUsername('admin') ?: new User(
					username: 'admin',
					password: 'password',
					email: adminEmail,
					phone: adminPhone,
					groupID: User.NOT_ASSIGNED,
					enabled: true).save(failOnError: true)
	 
			if (!adminUser.authorities.contains(adminRole)) {
				UserRole.create adminUser, adminRole
			}
		Industry.findByName ('retail') ?: new Industry (name: 'retail').save(failOnError: true);
	   Industry.findByName ('cold chain') ?: new Industry (name: 'cold chain').save(failOnError: true);
	   Industry.findByName ('medical') ?: new Industry (name: 'medical').save(failOnError: true);
	   Industry.findByName ('restaurant') ?: new Industry (name: 'restaurant').save(failOnError: true);
	   Industry.findByName ('transportation') ?: new Industry (name: 'transportation').save(failOnError: true);

	   def customer = new Customer()
		customer.name = 'New Seasons'
		customer.address = '123 NS Street'
		customer.phoneNumber = '650 303 0178'
		customer.save(failOnError: true)

		def corporate = new Location();
		corporate.netnum = -200;  // such a hack with negative numbers denoting a roll-up location
		corporate.industryID = Industry.findByName('retail').id
		corporate.active = Location.ACTIVATED;
		corporate.lastCommunication = new Date();
		corporate.name = "New Seasons Corporate";
		corporate.address = "2004 N Vancouver Avenue";
		corporate.city = "Portland";
		corporate.state = "OR";
		corporate.postalCode = "97227";
		corporate.country = "USA";
		corporate.customerID = customer.id
		corporate.save(failOnError:true);

		def or = new Location();
			or.netnum = -201;  // such a hack with negative numbers denoting a roll-up location
			or.industryID = Industry.findByName('retail').id
			or.active = Location.ACTIVATED;
			or.lastCommunication = new Date();
			or.name = "Oregon Region";
			or.address = "OR State";
			or.city = "Portland";
			or.state = "OR";
			or.postalCode = "97227";
			or.country = "USA";
			or.customerID = customer.id
			or.parentID = corporate.id;
			or.save(failOnError:true);
    }
    def destroy = {
    }
}
