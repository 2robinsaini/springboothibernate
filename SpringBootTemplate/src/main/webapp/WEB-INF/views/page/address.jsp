<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="shortcut icon" href="<c:url value="res/favicon.ico"/>"
	type="image/x-icon" />
<script src="res/css/jquery-1.12.4.js"></script>
<script src="res/css/1.12.1/jquery-ui.js"></script>
<link href="res/css/tab.css" rel="stylesheet" />
<link href="res/css/custom.css" rel="stylesheet" />
</head>
<body>


	<table class="tableCustom">

		<tr class="tableRow tableCustom">
			<th class="tableCustom">Address ID</th>
			<th class="tableCustom">House Number/Flat Number</th>
			<th class="tableCustom">Contact Number</th>
			<th class="tableCustom">Tower Name/Floor Number</th>
			<th class="tableCustom">Society Or Streat Name</th>
			<th class="tableCustom">Near By</th>
			<th class="tableCustom">City</th>
			<th class="tableCustom">District</th>
			<th class="tableCustom">Pin</th>
			<th class="tableCustom">Country</th>
			<th class="tableCustom">Update Address</th>
		</tr>


		<tr class="tableCustom">
			<td class="tableCustom"><c:out value="${add.id}" /></td>
			<td class="tableCustom"><c:out value="${add.flatOrHouseNumber}" /></td>
			<td class="tableCustom"><c:out value="${add.contactNumber}" /></td>
			<td class="tableCustom"><c:out value="${add.towerName}" /></td>
			<td class="tableCustom"><c:out value="${add.socityOrStreatName}" /></td>
			<td class="tableCustom"><c:out value="${add.nearBy}" /></td>
			<td class="tableCustom"><c:out value="${add.city}" /></td>
			<td class="tableCustom"><c:out value="${add.district}" /></td>
			<td class="tableCustom"><c:out value="${add.pin}" /></td>
			<td class="tableCustom"><c:out value="${add.country}" /></td>
			<td class="tableCustom"><a class="button"
				href="updateAddress?addId=${add.id}">Update Address</a></td>
		</tr>

	</table>


</body>
</html>