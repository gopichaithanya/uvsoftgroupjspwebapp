<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="en" />
<fmt:setBundle basename="i18n/messages" />

<head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>

<form action='/uvsoftgroupjspwebapp/userRegistration/add' method='post'>
	<table class='table table-hover table-responsive table-bordered'>
		<tr>
			<td><b><fmt:message key="label.user.addressid" /></b></td>
			<td><input type='text' name='userAddressId' class='form-control'
				value="${userRegistration.userAddressId}" /></td>
			<td><b><fmt:message key="label.user.fname" /></b></td>
			<td><input type='text' name='userRegistrationFName'
				class='form-control'
				value="${userRegistration.userRegistrationFName}" /></td>
		</tr>
		<tr>
			<td><b><fmt:message key="label.user.mname" /></b></td>
			<td><input type='text' name='userRegistrationMName'
				class='form-control'
				value="${userRegistration.userRegistrationMName}" /></td>
			<td><b><fmt:message key="label.user.lname" /></b></td>
			<td><input type='text' name='userRegistrationLName'
				class='form-control'
				value="${userRegistration.userRegistrationLName}" /></td>
		</tr>
		<tr>
			<td><b><fmt:message key="label.user.fullname" /></b></td>
			<td><input type='text' name='userRegistrationfullName'
				class='form-control'
				value="${userRegistration.userRegistrationfullName}" /></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><b><fmt:message key="label.user.name" /></b></td>
			<td><input type='text' name='userRegistrationName'
				class='form-control'
				value="${userRegistration.userRegistrationName}" /></td>
			<td><b><fmt:message key="label.user.password" /></b></td>
			<td><input type='password' name='userRegistrationPassword'
				class='form-control'
				value="${userRegistration.userRegistrationPassword}" /></td>

		</tr>

		<tr>
			<td><b><fmt:message key="label.user.crdate" /></b></td>
			<td><input data-provide="datepicker"
				name="userRegistrationCrDate" data-date-format="yyyy-mm-dd"
				placeholder="Select date"
				value="${userRegistration.userRegistrationCrDate}"></td>
			<td><b><fmt:message key="label.user.ldate" /></b></td>
			<td><input data-provide="datepicker"
				name="userRegistrationLDate" data-date-format="yyyy-mm-dd"
				placeholder="Select date"
				value="${userRegistration.userRegistrationLDate}"></td>

		</tr>
	</table>
	<button type="submit" class="myButton">
		<b><fmt:message key="label.user.registration.add" /></b>
	</button>
</form>

