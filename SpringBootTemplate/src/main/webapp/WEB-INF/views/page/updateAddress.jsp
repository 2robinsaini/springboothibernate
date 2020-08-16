<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <link href="res/css/tab.css" rel="stylesheet" /> -->
<link rel="icon" href="<c:url value="res/favicon.ico"/>"
	type="image/x-icon" />
<link href="res/css/custom.css" rel="stylesheet" />
</head>
<body>

	<div align="center">
		<table style="padding: 20px; margin: 10px;">
			<form:form id="updateAddress" name="updateStdAdd" method="post"
				modelAttribute="address" action="updateStdAdd">
				<tr align="right">
					<th>Address ID</th>
					<td><spring:bind path="address.id"> ${add.id}
							<input hidden="true" type="text" name="${status.expression}" value="${add.id}">
						</spring:bind></td>
				</tr>
				<tr align="right">
					<th>House Number/Flat Number</th>
					<td><spring:bind path="address.flatOrHouseNumber">
							<input type="text" name="${status.expression}"
								value="${add.flatOrHouseNumber}">
						</spring:bind></td>
				</tr>
				<tr align="right">
					<th>Contact Number</th>
					<td><spring:bind path="address.contactNumber">
							<input type="text" name="${status.expression}"
								value="${add.contactNumber}" />
						</spring:bind></td>
				</tr>
				<tr align="right">
					<th>Tower Name/Floor Number</th>
					<td><spring:bind path="address.towerName">
							<input type="text" name="${status.expression}"
								value="${add.towerName}" />
						</spring:bind></td>
				<tr>
				<tr align="right">
					<th>Society Or Street Name</th>
					<td><spring:bind path="address.socityOrStreatName">
							<input type="text" name="${status.expression}"
								value="${add.socityOrStreatName}" />
						</spring:bind></td>
				</tr>
				<tr align="right">
					<th>Near By</th>
					<td><spring:bind path="address.nearBy">
							<input type="text" name="${status.expression}"
								value="${add.nearBy}" />
						</spring:bind></td>
				</tr>
				<tr align="right">
					<th>City</th>
					<td><spring:bind path="address.city">
							<input type="text" name="${status.expression}"
								value="${add.city}" />
						</spring:bind></td>
				</tr>
				<tr align="right">
					<th>District</th>
					<td><spring:bind path="address.district">
							<input type="text" name="${status.expression}"
								value="${add.district}" />
						</spring:bind></td>
				</tr>
				<tr align="right">
					<th>Pin</th>
					<td><spring:bind path="address.pin">
							<input type="text" name="${status.expression}" value="${add.pin}" />
						</spring:bind></td>
				</tr>
				<tr align="right">
					<th>Country</th>
					<td><spring:bind path="address.country">
							<input type="text" name="${status.expression}"
								value="${add.country}" />
						</spring:bind></td>

				</tr>
				<tr align="right">
					<td></td>
					<td><input type="submit" value="Update" /></td>
				</tr>
			</form:form>


		</table>

	</div>

</body>
</html>