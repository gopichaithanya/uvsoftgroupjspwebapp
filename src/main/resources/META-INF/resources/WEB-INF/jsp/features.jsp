<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="en"/>
<fmt:setBundle basename="i18n/messages" />
<html lang="en">
<head>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
</head>

<table class="table table-hover">
<tr>
<td><div class="container">
    <a href="userRegistration/showUserRegistrations"><h3><fmt:message key="label.registration.action" /></h3></a>
	</div></td>
<td></td>
<td></td>
</tr>
<tr>
<td><div class="container">
    <a href="userRole/showUserRoles"><h3><fmt:message key="label.role.action" /></h3></a>
	</div></td>
<td></td>
<td></td>
</tr>
<tr>
<td><div class="container">
    <a href="addressInfo/showAddressInfos"><h3><fmt:message key="label.address.action" /></h3></a>
	</div></td>
</tr>
<td></td>
<td></td>
</table>




