<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="i18n/messages" />

<form action='/uvsoftgroupjspwebapp/userRole/add' method='post'>

	<table class='table table-hover table-responsive table-bordered'>
		<tr>
			<td><b><fmt:message key="label.role.name"/></b></td>
			<td><input type='text' name='userRoleName' class='form-control' required/></td>
			<td><b><fmt:message key="label.role.type"/></b></td>
			<td><input type='text' name='userRoleType' class='form-control' required/></td>
			<td><b><fmt:message key="label.role.crdate"/></b></td>
			<td><input data-provide="datepicker" name="userRoleDate" data-date-format="yyyy-mm-dd" placeholder="Select date" required></td>
		</tr>
		
	</table>
<button type="submit" class="myButton"><b><fmt:message key="label.role.add"/></b></button>
</form>