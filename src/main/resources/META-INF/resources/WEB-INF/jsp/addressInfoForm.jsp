<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="i18n/messages" />
<head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>

<form action='/uvsoftgroupjspwebapp/addressInfo/add' method='post'>

	<table class='table table-hover table-responsive table-bordered'>
		<tr>
			<td><b><fmt:message key="label.reference.id" /></b></td>
			
			<td><input type='text' name='adRefId' class='form-control'</td>
			<td><b><fmt:message key="label.address.type" /></b></td>
			<td><input type='text' name='adType' class='form-control' /></td>
		</tr>
		<tr>
			<td><b><fmt:message key="label.address.city" /></b></td>
			<td><input type='text' name='adCity' class='form-control' /></td>
			<td><b><fmt:message key="label.address.road" /></b></td>
			<td><input type='text' name='adRoad' class='form-control' /></td>
		</tr>
		<tr>
			<td><b><fmt:message key="label.address.road.type" /></b></td>
			<td><input type='text' name='adRoadType' class='form-control' /></td>
			<td><b><fmt:message key="label.address.house.number" /></b></td>
			<td><input type='text' name='adHouseNumber' class='form-control' /></td>
		</tr>
		
       <tr>
			<td><b><fmt:message key="label.address.post.code" /></b></td>
			<td><input type='text' name='adPostCode' class='form-control' /></td>
			<td><b><fmt:message key="label.address.country" /></b></td>
			<td><input type='text' name='adCountry' class='form-control' /></td>
		</tr>
    
	</table>
 <button type="submit" class="myButton"><fmt:message key="label.add.new.address" /></button>
</form>

