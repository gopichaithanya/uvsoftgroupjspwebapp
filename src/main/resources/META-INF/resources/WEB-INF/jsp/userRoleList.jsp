<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="en" />
<fmt:setBundle basename="i18n/messages" />
<head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>

<table class="table table-hover table-responsive table-bordered">
	<thead>
		<tr>
			<th><b><fmt:message key="label.role.id" /></b></th>
			<th><b><fmt:message key="label.role.name" /></b></th>
			<th><b><fmt:message key="label.role.type" /></b></th>
			<th><b><fmt:message key="label.role.crdate" /></b></th>
			<th colspan="2" align="center"><b><fmt:message key="label.action" /></b></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${userRoles}" var="ur">
			<tr>
				<td><c:out value="${ur.userRoleId}"></c:out></td>
				<td><c:out value="${ur.userRoleName}"></c:out></td>
				<td><c:out value="${ur.userRoleType}"></c:out></td>
				<td><c:out value="${ur.userRoleDate}"></c:out></td>

				<td><a
					href="/uvsoftgroupjspwebapp/userRole/updateUserRole/${ur.userRoleId}">
						<button type="submit" class="myButton">
							<fmt:message key="label.edit" />
						</button>
				</a></td>
				<td><a
					href="/uvsoftgroupjspwebapp/userRole/delete/${ur.userRoleId}">
						<button type="submit" class="myButton">
							<fmt:message key="label.delete" />
						</button>
				</a></td>
			</tr>

		</c:forEach>
	</tbody>
</table>


