
<%@ page import="grailsdatecreatedissue.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-location" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-location" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list location">
			
				<g:if test="${location?.deactivationDate}">
				<li class="fieldcontain">
					<span id="deactivationDate-label" class="property-label"><g:message code="location.deactivationDate.label" default="Deactivation Date" /></span>
					
						<span class="property-value" aria-labelledby="deactivationDate-label"><g:formatDate date="${location?.deactivationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.lastCommunication}">
				<li class="fieldcontain">
					<span id="lastCommunication-label" class="property-label"><g:message code="location.lastCommunication.label" default="Last Communication" /></span>
					
						<span class="property-value" aria-labelledby="lastCommunication-label"><g:formatDate date="${location?.lastCommunication}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="location.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:fieldValue bean="${location}" field="active"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.activeAlertCount}">
				<li class="fieldcontain">
					<span id="activeAlertCount-label" class="property-label"><g:message code="location.activeAlertCount.label" default="Active Alert Count" /></span>
					
						<span class="property-value" aria-labelledby="activeAlertCount-label"><g:fieldValue bean="${location}" field="activeAlertCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="location.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${location}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.alertEscalationDelayMinutes}">
				<li class="fieldcontain">
					<span id="alertEscalationDelayMinutes-label" class="property-label"><g:message code="location.alertEscalationDelayMinutes.label" default="Alert Escalation Delay Minutes" /></span>
					
						<span class="property-value" aria-labelledby="alertEscalationDelayMinutes-label"><g:fieldValue bean="${location}" field="alertEscalationDelayMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.application}">
				<li class="fieldcontain">
					<span id="application-label" class="property-label"><g:message code="location.application.label" default="Application" /></span>
					
						<span class="property-value" aria-labelledby="application-label"><g:fieldValue bean="${location}" field="application"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.aversion}">
				<li class="fieldcontain">
					<span id="aversion-label" class="property-label"><g:message code="location.aversion.label" default="Aversion" /></span>
					
						<span class="property-value" aria-labelledby="aversion-label"><g:fieldValue bean="${location}" field="aversion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.cellPhone}">
				<li class="fieldcontain">
					<span id="cellPhone-label" class="property-label"><g:message code="location.cellPhone.label" default="Cell Phone" /></span>
					
						<span class="property-value" aria-labelledby="cellPhone-label"><g:fieldValue bean="${location}" field="cellPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.channel}">
				<li class="fieldcontain">
					<span id="channel-label" class="property-label"><g:message code="location.channel.label" default="Channel" /></span>
					
						<span class="property-value" aria-labelledby="channel-label"><g:fieldValue bean="${location}" field="channel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="location.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${location}" field="city"/></span>
					
				</li>
				</g:if>	
						
				<g:if test="${location?.customerID}">
				<li class="fieldcontain">
					<span id="customerID-label" class="property-label"><g:message code="location.customerID.label" default="customerID" /></span>
					
						<span class="property-value" aria-labelledby="customerID-label"><g:fieldValue bean="${location}" field="customerID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.cleardAlertCount}">
				<li class="fieldcontain">
					<span id="cleardAlertCount-label" class="property-label"><g:message code="location.cleardAlertCount.label" default="Cleard Alert Count" /></span>
					
						<span class="property-value" aria-labelledby="cleardAlertCount-label"><g:fieldValue bean="${location}" field="cleardAlertCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="location.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${location}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="location.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${location?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="location.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${location}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.gmac}">
				<li class="fieldcontain">
					<span id="gmac-label" class="property-label"><g:message code="location.gmac.label" default="Gmac" /></span>
					
						<span class="property-value" aria-labelledby="gmac-label"><g:fieldValue bean="${location}" field="gmac"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.hrsOffsetFromUTC}">
				<li class="fieldcontain">
					<span id="hrsOffsetFromUTC-label" class="property-label"><g:message code="location.hrsOffsetFromUTC.label" default="Hrs Offset From UTC" /></span>
					
						<span class="property-value" aria-labelledby="hrsOffsetFromUTC-label"><g:fieldValue bean="${location}" field="hrsOffsetFromUTC"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.industryID}">
				<li class="fieldcontain">
					<span id="industryID-label" class="property-label"><g:message code="location.industryID.label" default="Industry ID" /></span>
					
						<span class="property-value" aria-labelledby="industryID-label"><g:fieldValue bean="${location}" field="industryID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.jversion}">
				<li class="fieldcontain">
					<span id="jversion-label" class="property-label"><g:message code="location.jversion.label" default="Jversion" /></span>
					
						<span class="property-value" aria-labelledby="jversion-label"><g:fieldValue bean="${location}" field="jversion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="location.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${location}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.netnum}">
				<li class="fieldcontain">
					<span id="netnum-label" class="property-label"><g:message code="location.netnum.label" default="Netnum" /></span>
					
						<span class="property-value" aria-labelledby="netnum-label"><g:fieldValue bean="${location}" field="netnum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.parentID}">
				<li class="fieldcontain">
					<span id="parentID-label" class="property-label"><g:message code="location.parentID.label" default="Parent ID" /></span>
					
						<span class="property-value" aria-labelledby="parentID-label"><g:fieldValue bean="${location}" field="parentID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="location.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${location}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.preventTimeoutOverride}">
				<li class="fieldcontain">
					<span id="preventTimeoutOverride-label" class="property-label"><g:message code="location.preventTimeoutOverride.label" default="Prevent Timeout Override" /></span>
					
						<span class="property-value" aria-labelledby="preventTimeoutOverride-label"><g:formatBoolean boolean="${location?.preventTimeoutOverride}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.sendAlertsFromSubLocations}">
				<li class="fieldcontain">
					<span id="sendAlertsFromSubLocations-label" class="property-label"><g:message code="location.sendAlertsFromSubLocations.label" default="Send Alerts From Sub Locations" /></span>
					
						<span class="property-value" aria-labelledby="sendAlertsFromSubLocations-label"><g:formatBoolean boolean="${location?.sendAlertsFromSubLocations}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="location.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${location}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.tempScale}">
				<li class="fieldcontain">
					<span id="tempScale-label" class="property-label"><g:message code="location.tempScale.label" default="Temp Scale" /></span>
					
						<span class="property-value" aria-labelledby="tempScale-label"><g:fieldValue bean="${location}" field="tempScale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.timeScale}">
				<li class="fieldcontain">
					<span id="timeScale-label" class="property-label"><g:message code="location.timeScale.label" default="Time Scale" /></span>
					
						<span class="property-value" aria-labelledby="timeScale-label"><g:fieldValue bean="${location}" field="timeScale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.unacknowledgedAlertCount}">
				<li class="fieldcontain">
					<span id="unacknowledgedAlertCount-label" class="property-label"><g:message code="location.unacknowledgedAlertCount.label" default="Unacknowledged Alert Count" /></span>
					
						<span class="property-value" aria-labelledby="unacknowledgedAlertCount-label"><g:fieldValue bean="${location}" field="unacknowledgedAlertCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${location?.websiteURL}">
				<li class="fieldcontain">
					<span id="websiteURL-label" class="property-label"><g:message code="location.websiteURL.label" default="Website URL" /></span>
					
						<span class="property-value" aria-labelledby="websiteURL-label"><g:fieldValue bean="${location}" field="websiteURL"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${location?.id}" />
					<g:link class="edit" action="edit" id="${location?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
