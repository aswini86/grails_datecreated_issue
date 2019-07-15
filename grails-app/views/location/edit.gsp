<%@ page import="grailsdatecreatedissue.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<asset:javascript src="jquery.js"/>
		<asset:javascript src="jquery-ui-1.10.0.custom.min.js"/>

	</head>
	<body>
		<div id=page>
			<div class="sensordisplay sub-section-container clearfix">
				%{--<a href="#edit-location" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
				 <div class="nav" role="navigation">
					<ul>
						<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
						<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
						<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
					</ul>
				</div> --}%
				<div id="edit-location" class="content scaffold-edit" role="main">
					<div class="sensor-name"><g:message code="default.edit.label" args="[entityName]" /> : ${location?.name}</div><br />
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>
						<g:hasErrors bean="${location}">

					<ul class="errors" role="alert">
						<g:eachError bean="${location}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<g:form method="post" >
						<g:hiddenField name="id" value="${location?.id}" />
						<g:hiddenField name="version" value="${location?.version}" />
						<fieldset class="form">
							<g:render template="form"/>
						</fieldset>
						
						<div class="form-group"> 
							<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
							%{-- <g:actionSubmit class="btn  btn-hollow btn-white" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /> --}%
						 </div>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>