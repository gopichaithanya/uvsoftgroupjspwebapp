<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"></jsp:include>

<div class="container">

<h3>User Address Information:</h3>

<form action='/uvsoftgroupjspwebapp/addressInfo/add' method='post'>

	<table class='table table-hover table-responsive table-bordered'>
		<tr>
			<td><b>Reference Id:</b></td>
			<td><input type='text' name='adRefId' class='form-control' value="${addressInfo.adRefId}" /></td>
			<td><b>Address Type:</b></td>
			<td><input type='text' name='adType' class='form-control' value="${addressInfo.adType}" /></td>
		</tr>
		<tr>
			<td><b>City:</b></td>
			<td><input type='text' name='adCity' class='form-control' value="${addressInfo.adCity}" /></td>
			<td><b>Road:</b></td>
			<td><input type='text' name='adRoad' class='form-control' value="${addressInfo.adRoad}"/></td>
		</tr>
		<tr>
			<td><b>Road Type:</b></td>
			<td><input type='text' name='adRoadType' class='form-control' value="${addressInfo.adRoadType}"/></td>
			<td><b>House Number:</b></td>
			<td><input type='text' name='adHouseNumber' class='form-control' value="${addressInfo.adHouseNumber}"/></td>
		</tr>
		
       <tr>
			<td><b>Post Code:</b></td>
			<td><input type='text' name='adPostCode' class='form-control' value="${addressInfo.adPostCode}"/></td>
			<td><b>Country:</b></td>
			<td><input type='text' name='adCountry' class='form-control' value="${addressInfo.adCountry}"/></td>
		</tr>
      <input type='hidden' id='adId' rows='5' class='form-control' name='adId' value="${addressInfo.adId}"/>
	</table>
 <button type="submit" class="btn btn-primary">Update User Address Information</button>
</form>


<jsp:include page="footer.jsp"></jsp:include>

