<%@ page import="grailsdatecreatedissue.Location" %>

	<g:javascript src="bootstrap.js"/>
<div class="row">
	<div class="col-md-6 col-lg-6">
		<div class="fieldcontain ${hasErrors(bean: location, field: 'deactivationDate', 'error')} ">
			<div class="col-md-4 col-lg-4">	
				<label for="deactivationDate">
					<g:message code="location.deactivationDate.label" default="Deactivation Date" />
					
				</label></div>
			
			<div class="col-md-8 col-lg-8">
				<g:datePicker name="deactivationDate" precision="day"  value="${location?.deactivationDate}" default="none" noSelection="['': '']" />
			</div>
		</div>
		<%--<br>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'lastCommunication', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="lastCommunication">
				<g:message code="location.lastCommunication.label" default="Last Communication" />
				
			</label></div>
			<div class="col-md-8 col-lg-8"><g:datePicker name="lastCommunication" precision="day"  value="${location?.lastCommunication}" default="none" noSelection="['': '']" /></div>
		</div>
		<br>
		--%><div class="fieldcontain ${hasErrors(bean: location, field: 'active', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="active">
				<g:message code="location.active.label" default="Active" />
				<span class="required-indicator">*</span>
			</label></div>
			<div class="col-md-8 col-lg-8"><g:field name="active" type="number" value="${location?.active}" required=""/></div>
		</div>
		<br>
		<div class="fieldcontain ${hasErrors(bean: location, field: 'activeAlertCount', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="activeAlertCount">
				<g:message code="location.activeAlertCount.label" default="Active Alert Count" />
				<span class="required-indicator">*</span>
			</label></div>
			<div class="col-md-8 col-lg-8"><g:field name="activeAlertCount" type="number" value="${location?.activeAlertCount}" required=""/></div>
		</div>
		<br>
		<div class="fieldcontain ${hasErrors(bean: location, field: 'address', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="address">
				<g:message code="location.address.label" default="Address" />
				
			</label></div>
			<div class="col-md-8 col-lg-8"><g:textField name="address" value="${location?.address}"/></div>
		</div>


		
		<div class="fieldcontain ${hasErrors(bean: location, field: 'application', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="application">
				<g:message code="location.application.label" default="Application" />
				
			</label></div>
			<div class="col-md-8 col-lg-8"><g:textField name="application" value="${location?.application}"/></div>
		</div>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'aversion', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="aversion">
				<g:message code="location.aversion.label" default="Aversion" />
				
			</label></div>
			<div class="col-md-8 col-lg-8"><g:textField name="aversion" value="${location?.aversion}"/></div>
		</div>
		<br>
		<div class="fieldcontain ${hasErrors(bean: location, field: 'cellPhone', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="cellPhone">
				<g:message code="location.cellPhone.label" default="Cell Phone" />
				
			</label></div>
			<div class="col-md-8 col-lg-8"><g:textField name="cellPhone" value="${location?.cellPhone}"/></div>
		</div>
		<br>
		<div class="fieldcontain ${hasErrors(bean: location, field: 'channel', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="channel">
				<g:message code="location.channel.label" default="Channel" />
				<span class="required-indicator">*</span>
			</label></div>
			<div class="col-md-8 col-lg-8"><g:field name="channel" type="number" value="${location?.channel}" required=""/></div>
		</div>
		<br>

		
		<div class="fieldcontain ${hasErrors(bean: location, field: 'city', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="city">
				<g:message code="location.city.label" default="City" />
				
			</label></div>
			<div class="col-md-8 col-lg-8"><g:textField name="city" value="${location?.city}"/></div>
		</div>
		<br>
		
		<div class="fieldcontain ${hasErrors(bean: location, field: 'customerID', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="customerID">
				<g:message code="location.customerID.label" default="Customer ID" />
				<span class="required-indicator">*</span>
			</label></div>
			<div class="col-md-8 col-lg-8"><g:field name="customerID" type="number" value="${location?.customerID}" required=""/></div>
		</div>
		<br>
		
		<div class="fieldcontain ${hasErrors(bean: location, field: 'cleardAlertCount', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="cleardAlertCount">
				<g:message code="location.cleardAlertCount.label" default="Cleard Alert Count" />
				<span class="required-indicator">*</span>
			</label></div>
			<div class="col-md-8 col-lg-8"><g:field name="cleardAlertCount" type="number" value="${location?.cleardAlertCount}" required=""/></div>
		</div>
		<br>
		<div class="fieldcontain ${hasErrors(bean: location, field: 'country', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="country">
				<g:message code="location.country.label" default="Country" />
				
			</label></div>
			<div class="col-md-8 col-lg-8"><g:textField name="country" value="${location?.country}"/></div>
		</div>
		<br>



		<div class="fieldcontain ${hasErrors(bean: location, field: 'emailAddress', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="emailAddress">
				<g:message code="location.emailAddress.label" default="Email Address" />
				
			</label></div>
			<div class="col-md-8 col-lg-8"><g:textField name="emailAddress" value="${location?.emailAddress}"/></div>
		</div>
		<br>
		<div class="fieldcontain ${hasErrors(bean: location, field: 'alertEscalationDelayMinutes', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="alertEscalationDelayMinutes">
				<g:message code="location.alertEscalationDelayMinutes.label" default="Alert Escalation Delay Minutes" />
				<span class="required-indicator">*</span>
			</label></div>
			<div class="col-md-8 col-lg-8"><g:field name="alertEscalationDelayMinutes" type="number" value="${location?.alertEscalationDelayMinutes}" required=""/></div>
		</div>


		<br><br>

	</div>
	<div class="col-md-6 col-lg-6"> 

		<div class="fieldcontain ${hasErrors(bean: location, field: 'gmac', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="gmac">
				<g:message code="location.gmac.label" default="Gmac" />
				<span class="required-indicator">*</span>
			</label></div>
			<g:field name="gmac" type="number" value="${location?.gmac}" required=""/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'hrsOffsetFromUTC', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="hrsOffsetFromUTC">
				<g:message code="location.hrsOffsetFromUTC.label" default="Hrs Offset From UTC" />
				<span class="required-indicator">*</span>
			</label></div>
			<g:field name="hrsOffsetFromUTC" type="number" value="${location?.hrsOffsetFromUTC}" required=""/>
		</div>
		<div class="clearfix"></div>
		
		<div class="fieldcontain ${hasErrors(bean: location, field: 'industryID', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="industryID">
				<g:message code="location.industryID.label" default="Industry ID" />
				<span class="required-indicator">*</span>
			</label></div>
			<g:field name="industryID" type="number" value="${location?.industryID}" required=""/>
		</div>
		
		<div class="fieldcontain ${hasErrors(bean: location, field: 'jversion', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="jversion">
				<g:message code="location.jversion.label" default="Jversion" />
				
			</label></div>
			<g:textField name="jversion" value="${location?.jversion}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'name', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="name">
				<g:message code="location.name.label" default="Name" />
				
			</label></div>
			<g:textField name="name" value="${location?.name}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'netnum', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="netnum">
				<g:message code="location.netnum.label" default="Netnum" />
				<span class="required-indicator">*</span>
			</label></div>
			<g:field name="netnum" type="number" value="${location?.netnum}" required=""/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'parentID', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="parentID">
				<g:message code="location.parentID.label" default="Parent ID" />
				<span class="required-indicator">*</span>
			</label></div>
			<g:field name="parentID" type="number" value="${location?.parentID}" required=""/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'postalCode', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="postalCode">
				<g:message code="location.postalCode.label" default="Postal Code" />
				
			</label></div>
			<g:textField name="postalCode" value="${location?.postalCode}"/>
		</div>


		<div class="fieldcontain ${hasErrors(bean: location, field: 'state', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="state">
				<g:message code="location.state.label" default="State" />
				
			</label></div>
			<g:textField name="state" value="${location?.state}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'tempScale', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="tempScale">
				<g:message code="location.tempScale.label" default="Temp Scale" />
				
			</label></div>
			<g:textField name="tempScale" value="${location?.tempScale}"/>
		</div>



		<div class="fieldcontain ${hasErrors(bean: location, field: 'timeScale', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="timeScale">
				<g:message code="location.timeScale.label" default="Time Scale" />
				
			</label></div>
			<g:textField name="timeScale" value="${location?.timeScale}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'unacknowledgedAlertCount', 'error')} required">
			<div class="col-md-4 col-lg-4">	<label for="unacknowledgedAlertCount">
				<g:message code="location.unacknowledgedAlertCount.label" default="Unacknowledged Alert Count" />
				<span class="required-indicator">*</span>
			</label></div>
			<g:field name="unacknowledgedAlertCount" type="number" value="${location?.unacknowledgedAlertCount}" required=""/>
		</div>
		<div class="clearfix"></div>

		<div class="fieldcontain ${hasErrors(bean: location, field: 'websiteURL', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="websiteURL">
				<g:message code="location.websiteURL.label" default="Website URL" />
				
			</label></div>
			<g:textField name="websiteURL" value="${location?.websiteURL}"/>
		</div>


		<div class="fieldcontain ${hasErrors(bean: location, field: 'sendAlertsFromSubLocations', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="sendAlertsFromSubLocations">
				<g:message code="location.sendAlertsFromSubLocations.label" default="Send Alerts From Sub Locations" />
				
			</label></div>
			<g:checkBox name="sendAlertsFromSubLocations" value="${location?.sendAlertsFromSubLocations}" />
		</div>
		<div class="clearfix"></div>
		<div class="fieldcontain ${hasErrors(bean: location, field: 'preventTimeoutOverride', 'error')} ">
			<div class="col-md-4 col-lg-4">	<label for="preventTimeoutOverride">
				<g:message code="location.preventTimeoutOverride.label" default="Prevent Timeout Override" />
				
			</label></div>
			<g:checkBox name="preventTimeoutOverride" value="${location?.preventTimeoutOverride}" />
		</div>

	</div>
</div>



