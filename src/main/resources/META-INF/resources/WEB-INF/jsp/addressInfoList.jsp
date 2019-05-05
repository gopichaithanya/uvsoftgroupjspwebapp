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
		    <th><b><fmt:message key="label.address.id"/></b></th>
			<th><b><fmt:message key="label.reference.id"/></b></th>
			<th><b><fmt:message key="label.address.type"/></b></th>
			<th><b><fmt:message key="label.address.city"/></b></th>
			<th><b><fmt:message key="label.address.road"/></b></th>
			<th><b><fmt:message key="label.address.road.type"/></b></th>
			<th><b><fmt:message key="label.address.house.number"/></b></th>
			<th><b><fmt:message key="label.address.post.code"/></b></th>
			<th><b><fmt:message key="label.address.country"/></b></th>
		    <th colspan="2"><b><fmt:message key="label.action"/></b></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${addressInfos}" var="adi">
			<tr>
			    <td><c:out value="${adi.adId}"></c:out></td>
				<td><c:out value="${adi.adRefId}"></c:out></td>
				<td><c:out value="${adi.adType}"></c:out></td>
				<td><c:out value="${adi.adCity}"></c:out></td>
				<td><c:out value="${adi.adRoad}"></c:out></td>
				<td><c:out value="${adi.adRoadType}"></c:out></td>
				<td><c:out value="${adi.adHouseNumber}"></c:out></td>
				<td><c:out value="${adi.adPostCode}"></c:out></td>
				<td><c:out value="${adi.adCountry}"></c:out></td>
				
				<td><a href="/uvsoftgroupjspwebapp/addressInfo/updateAddressInfo/${adi.adId}">
						<button type="submit" class="myButton"><fmt:message key="label.edit" /></button>
				</a></td>
				<td><a href="/uvsoftgroupjspwebapp/addressInfo/delete/${adi.adId}">
						<button type="submit" class="myButton"><fmt:message key="label.delete" /></button>
				</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
