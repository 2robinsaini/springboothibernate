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


	<table>

		<tr class="tableRow">
			<th>Address ID</th>
			<th>House Number/Flat Number</th>
			<th>Contact Number</th>
			<th>Tower Name/Floor Number</th>
			<th>Society Or Streat Name</th>
			<th>Near By</th>
			<th>City</th>
			<th>District</th>
			<th>Pin</th>
			<th>Country</th>
			<th>Update Address</th>
		</tr>


		<tr>
			<td><c:out value="${add.id}" /></td>
			<td><c:out value="${add.flatOrHouseNumber}" /></td>
			<td><c:out value="${add.contactNumber}" /></td>
			<td><c:out value="${add.towerName}" /></td>
			<td><c:out value="${add.socityOrStreatName}" /></td>
			<td><c:out value="${add.nearBy}" /></td>
			<td><c:out value="${add.city}" /></td>
			<td><c:out value="${add.district}" /></td>
			<td><c:out value="${add.pin}" /></td>
			<td><c:out value="${add.country}" /></td>
			<td><a class="button" href="updateAddress?addId=${add.id}">Update Address</a></td>
		</tr>

	</table>


</body>
</html>