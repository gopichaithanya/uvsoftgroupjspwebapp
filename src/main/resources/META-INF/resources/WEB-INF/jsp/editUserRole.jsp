<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="i18n/messages" />

<head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>

<jsp:include page="header.jsp"></jsp:include>

<h3><fmt:message key="label.user.role"/></h3>

<form action='/uvsoftgroupjspwebapp/userRole/add' method='post'>

	<table class='table table-hover table-responsive table-bordered'>
		<tr>
			<td><b><fmt:message key="label.role.name"/></b></td>
			<td><input type='text' name='userRoleName' class='form-control' value="${userRole.userRoleName}"/></td>
			
			<td><b><fmt:message key="label.role.type"/></b></td>
			<td><input type='text' name='userRoleType' class='form-control' value="${userRole.userRoleType}"/></td>
			
			<td><b><fmt:message key="label.role.crdate"/></b></td>
			<td><input data-provide="datepicker" name="userRoleDate" data-date-format="yyyy-mm-dd" placeholder="Select date" value="${userRole.userRoleDate}"></td>
		</tr>
		
      <input type='hidden' id='userRoleId' rows='5' class='form-control' name='userRoleId' value="${userRole.userRoleId}"/>
	</table>
 <button type="submit" class="myButton"><fmt:message key="label.role.update"/></button>
</form>


<jsp:include page="footer.jsp"></jsp:include>

