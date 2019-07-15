 <%@ page import="grailsdatecreatedissue.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style>
	
			.pagination {
			    //background: #fff url(../images/skin/shadow.jpg) bottom repeat-x;
			    //border: 1px solid #ccc;
			    border-top: 1;
			    color: #666;
			    font-size: 10px;
			    overflow: hidden;
			    //padding: 10px 3px;
			    height: 50px;
			}
			.pagination a {
				border-radius: 8px;
				border: 1px solid #ccc;
				border-color: #ccc #aaa #aaa #ccc;
				color: #666;
				margin: 0 3px;
				background-color: gray; /* Green */
				border: none;
				border: 1px solid #ccc;
				color: white;
				padding: 1px 14px;
				text-align: center;
				text-decoration: none;
				display: inline-block;
				font-size: 16px;
			}
			.pagination span {
			    border-radius: 8px;
				border: 1px solid #ccc;
				border-color: #ccc #aaa #aaa #ccc;
				color: #666;
				margin: 0 3px;
				border: none;
				border: 1px solid #ccc;
				padding: 1px 14px;
				text-align: center;
				text-decoration: none;
				display: inline-block;
				font-size: 16px;

			}
			
		</style>

	</head>
	<body>
		<div class="nav">
		    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>  
			<span class="menuButton"><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
			<span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
			<span class="menuButton"><g:link class="list" controller="customerEmailDomain"><g:message code="default.list.label" args="["EmailDomains"]"/></g:link></span>
		</div>
		<div id="list-location" class="content scaffold-list" role="main">
			<%--<h3><g:message code="default.list.label" args="[entityName]" /></h3>--%>
			<span style="font-size: 25px;"><g:message code="default.list.label" args="[entityName]" /></span>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div>
				Toggle column: 
					<a class="toggle-vis" data-column="0">ID</a> - 
					<a class="toggle-vis" data-column="1">Deactivation Date</a> - 
					<a class="toggle-vis" data-column="2">Last Communication</a> - 
					<a class="toggle-vis" data-column="3">Active</a> - 
					<a class="toggle-vis" data-column="4">Active Alert Count</a> - 
					<a class="toggle-vis" data-column="5">Address</a> - 
					<a class="toggle-vis" data-column="6">Alert Escalation Delay Minutes</a> - 
					<a class="toggle-vis" data-column="7">Application</a> - 
					<a class="toggle-vis" data-column="8">Aversion</a> - 
					<a class="toggle-vis" data-column="9">Cell Phone</a> - 
					<a class="toggle-vis" data-column="10">Channel</a> - 
					<a class="toggle-vis" data-column="11">City</a> - 
					<a class="toggle-vis" data-column="12">Cleard Alert Count</a> - 
					<a class="toggle-vis" data-column="13">Country</a> - 
					<a class="toggle-vis" data-column="14">Date Created</a> - 
					<a class="toggle-vis" data-column="15">Email Address</a> - 
					<a class="toggle-vis" data-column="16">Gmac</a> - 
					<a class="toggle-vis" data-column="17">Hrs Offset From UTC</a> - 
					<a class="toggle-vis" data-column="18">Industry ID</a> - 
					<a class="toggle-vis" data-column="19">Jversion</a> - 
					<a class="toggle-vis" data-column="20">Name</a> - 
					<a class="toggle-vis" data-column="21">Netnum</a> - 
					<a class="toggle-vis" data-column="22">Parent ID</a> - 
					<a class="toggle-vis" data-column="23">Postal Code</a> - 
					<a class="toggle-vis" data-column="24">Prevent Timeout Override</a> - 
					<a class="toggle-vis" data-column="25">Send Alerts From Sub Locations</a> - 
					<a class="toggle-vis" data-column="26">State</a> - 
					<a class="toggle-vis" data-column="27">Temp Scale</a> - 
					<a class="toggle-vis" data-column="28">Time Scale</a> - 
					<a class="toggle-vis" data-column="29">Unacknowledged Alert Count</a> - 
					<a class="toggle-vis" data-column="30">Website URL</a>
			</div>
			<table id="dataTableId" class="display" cellspacing="0" width="100%">
				<thead id="tableHeader">
					<tr>
						<!-- Added ID FIeld so we can see what to assign parent ID  -->
						<g:sortableColumn property="id" title="${message(code: 'location.id.label', default: 'ID')}" />
						<g:sortableColumn property="deactivationDate" title="${message(code: 'location.deactivationDate.label', default: 'Deactivation Date')}" />
						<g:sortableColumn property="lastCommunication" title="${message(code: 'location.lastCommunication.label', default: 'Last Communication')}" />
						<g:sortableColumn property="active" title="${message(code: 'location.active.label', default: 'Active')}" />
						<g:sortableColumn property="activeAlertCount" title="${message(code: 'location.activeAlertCount.label', default: 'Active Alert Count')}" />
						<g:sortableColumn property="address" title="${message(code: 'location.address.label', default: 'Address')}" />
						<g:sortableColumn property="alertEscalationDelayMinutes" title="${message(code: 'location.alertEscalationDelayMinutes.label', default: 'Alert Escalation Delay Minutes')}" />
						<g:sortableColumn property="application" title="${message(code: 'location.application.label', default: 'Application')}" />
						<g:sortableColumn property="aversion" title="${message(code: 'location.aversion.label', default: 'Aversion')}" />
						<g:sortableColumn property="cellPhone" title="${message(code: 'location.cellPhone.label', default: 'Cell Phone')}" />
						<g:sortableColumn property="channel" title="${message(code: 'location.channel.label', default: 'Channel')}" />
						<g:sortableColumn property="city" title="${message(code: 'location.city.label', default: 'City')}" />
						<g:sortableColumn property="cleardAlertCount" title="${message(code: 'location.cleardAlertCount.label', default: 'Cleard Alert Count')}" />
						<g:sortableColumn property="country" title="${message(code: 'location.country.label', default: 'Country')}" />
						<g:sortableColumn property="dateCreated" title="${message(code: 'location.dateCreated.label', default: 'Date Created')}" />
						<g:sortableColumn property="emailAddress" title="${message(code: 'location.emailAddress.label', default: 'Email Address')}" />
						<g:sortableColumn property="gmac" title="${message(code: 'location.gmac.label', default: 'Gmac')}" />
						<g:sortableColumn property="hrsOffsetFromUTC" title="${message(code: 'location.hrsOffsetFromUTC.label', default: 'Hrs Offset From UTC')}" />
						<g:sortableColumn property="industryID" title="${message(code: 'location.industryID.label', default: 'Industry ID')}" />
						<g:sortableColumn property="jversion" title="${message(code: 'location.jversion.label', default: 'Jversion')}" />
						<g:sortableColumn property="name" title="${message(code: 'location.name.label', default: 'Name')}" />
						<g:sortableColumn property="netnum" title="${message(code: 'location.netnum.label', default: 'Netnum')}" />
						<g:sortableColumn property="parentID" title="${message(code: 'location.parentID.label', default: 'Parent ID')}" />
						<g:sortableColumn property="postalCode" title="${message(code: 'location.postalCode.label', default: 'Postal Code')}" />
						<g:sortableColumn property="preventTimeoutOverride" title="${message(code: 'location.preventTimeoutOverride.label', default: 'Prevent Timeout Override')}" />
						<g:sortableColumn property="sendAlertsFromSubLocations" title="${message(code: 'location.sendAlertsFromSubLocations.label', default: 'Send Alerts From Sub Locations')}" />
						<g:sortableColumn property="state" title="${message(code: 'location.state.label', default: 'State')}" />
						<g:sortableColumn property="tempScale" title="${message(code: 'location.tempScale.label', default: 'Temp Scale')}" />
						<g:sortableColumn property="timeScale" title="${message(code: 'location.timeScale.label', default: 'Time Scale')}" />
						<g:sortableColumn property="unacknowledgedAlertCount" title="${message(code: 'location.unacknowledgedAlertCount.label', default: 'Unacknowledged Alert Count')}" />
						<g:sortableColumn property="websiteURL" title="${message(code: 'location.websiteURL.label', default: 'Website URL')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${locationInstanceList}" status="i" var="locationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<!-- Added ID FIeld so we can see what to assign parent ID  -->					
						<td style="background-color: 1px solid white !important;"><g:link action="edit" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "id")}</g:link></td>
											
						<td style="background-color: 1px solid white !important;"><g:link action="show" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "deactivationDate")}</g:link></td>
					
						<td style="background-color: 1px solid white !important;"><g:formatDate date="${locationInstance.lastCommunication}" /></td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "active")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "activeAlertCount")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "address")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "alertEscalationDelayMinutes")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "application")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "aversion")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "cellPhone")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "channel")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "city")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "cleardAlertCount")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "country")}</td>
					
						<td style="background-color: 1px solid white !important;"><g:formatDate date="${locationInstance.dateCreated}" /></td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "emailAddress")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "gmac")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "hrsOffsetFromUTC")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "industryID")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "jversion")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "name")}</td>
					
						<g:def var="netnumVar" value="${locationInstance.netnum}"/> 
                        <td style="background-color: 1px solid white !important;"><g:link action="showSensors" params="[netnum: netnumVar]">${fieldValue(bean: locationInstance, field: "netnum")}</g:link></td>
                        					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "parentID")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "postalCode")}</td>
					
						<td style="background-color: 1px solid white !important;"><g:formatBoolean boolean="${locationInstance.preventTimeoutOverride}" /></td>
					
						<td style="background-color: 1px solid white !important;"><g:formatBoolean boolean="${locationInstance.sendAlertsFromSubLocations}" /></td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "state")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "tempScale")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "timeScale")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "unacknowledgedAlertCount")}</td>
					
						<td style="background-color: 1px solid white !important;">${fieldValue(bean: locationInstance, field: "websiteURL")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

				

			<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
			<script type="text/javascript" src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
			
		    <script type="text/javascript">
				$(document).ready(function() {
				    var table = $('#dataTableId').DataTable( 
				    //{
				      //  "scrollY": "200px",
				        //"scrollX": "200px",
				        //"paging": false
				    //}
				    		{
						        "scrollX": true,
						        "bPaginate": false,
						        "bSort" : false
						    } 
				     );
				 
				    $('a.toggle-vis').on( 'click', function (e) {
				    	   e.preventDefault();
				    	    var column = table.column( $(this).attr('data-column') );
				    	    column.visible( ! column.visible() );
				    } );} );
			</script>
			<div class="pagination">
				<g:paginate total="${locationInstanceTotal}" max = "100" />
			</div>
		</div>
	</body>
</html>