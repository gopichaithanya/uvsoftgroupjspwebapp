<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="i18n/messages" />

<head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>

<table class="table table-hover table-responsive table-bordered">
	<thead>
		<tr>
			<th><b><fmt:message key="label.user.registration.id" /></b></th>
			<th><b><fmt:message key="label.user.addressid" /></b></th>
			<th><b><fmt:message key="label.user.fname" /></b></th>
			<th><b><fmt:message key="label.user.mname" /></b></th>
			<th><b><fmt:message key="label.user.lname" /></b></th>
			<th><b><fmt:message key="label.user.fullname" /></b></th>
			<th><b><fmt:message key="label.user.name" /></b></th>
			<th><b><fmt:message key="label.user.crdate" /></b></th>
			<th><b><fmt:message key="label.user.ldate" /></b></th>
			<th colspan="2"><b><fmt:message key="label.action" /></b></th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${userRegistrations}" var="ur">
			<tr>
				<td><c:out value="${ur.userRegistrationId}"></c:out></td>
				<td><c:out value="${ur.userAddressId}"></c:out></td>
				<td><c:out value="${ur.userRegistrationFName}"></c:out></td>
				<td><c:out value="${ur.userRegistrationMName}"></c:out></td>
				<td><c:out value="${userRegistrationLName}"></c:out></td>
				<td><c:out value="${ur.userRegistrationfullName}"></c:out></td>
				<td><c:out value="${ur.userRegistrationName}"></c:out></td>
				<td><c:out value="${ur.userRegistrationCrDate}"></c:out></td>
				<td><c:out value="${ur.userRegistrationLDate}"></c:out></td>
				
				<td><a href="/uvsoftgroupjspwebapp/userRegistration/updateUserRegistration/${ur.userRegistrationId}">
						<button type="submit" class="myButton"><b><fmt:message key="label.edit" /></b></button>
				</a></td>
				<td><a href="/uvsoftgroupjspwebapp/userRegistration/delete/${ur.userRegistrationId}">
						<button type="submit" class="myButton"><b><fmt:message key="label.delete" /></b></button>
				</a></td>
			</tr>
		</c:forEach>
		
	</tbody>
</table>
