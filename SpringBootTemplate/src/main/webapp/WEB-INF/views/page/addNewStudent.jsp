<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon"
	href="<c:url value="res/favicon.ico"/>" type="image/x-icon" />
<title>Insert title here</title>
<link rel="stylesheet"
	href="res/css/jquery-ui.css">
<link rel="stylesheet" href="res/css/style.css">
<script src="res/css/jquery-1.12.4.js"></script>
<script src="res/css/1.12.1/jquery-ui.js"></script>

<script>
	$(function() {
		$("#datepickerDOB").datepicker();
		$("#datepickerDOJ").datepicker();
	});
</script>


</head>
<body>
	<div align="center">Student Enrollment</div>
	<div align="center">
	<form:form id="stdenrollment" name="stdenrollment" method="post"
		modelAttribute="student" action="addNewStd">

		<spring:bind path="student.name">
			<input type="text" name="${status.expression}"
				value="${status.value}" placeholder="student full name">
			<br />
		</spring:bind>

		<spring:bind path="student.fatherName">
			<input type="text" name="${status.expression}"
				placeholder="student father name" value="${status.value}">
			<br />
		</spring:bind>


		<spring:bind path="student.motherName">
			<input type="text" name="${status.expression}"
				placeholder="student mother name" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="student.dob">
			<input type="text" id="datepickerDOB" name="${status.expression}"
				placeholder="student DOB" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="student.doj">
			<input type="text" id="datepickerDOj" name="${status.expression}"
				placeholder="student DOJ" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="student.prevSchoolName">
			<input type="text" name="${status.expression}"
				placeholder="student previous School Name" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="student.std">
			<input type="text" name="${status.expression}"
				placeholder="student Standard" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="student.section">
			<input type="text" name="${status.expression}"
				placeholder="student Section" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="address.flatOrHouseNumber">
			<input type="text" name="${status.expression}"
				placeholder="Address Flat or House Number" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="address.contactNumber">
			<input type="text" name="${status.expression}"
				placeholder="Home Contact Number" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="address.towerName">
			<input type="text" name="${status.expression}"
				placeholder="Tower Buildeing Name" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="address.socityOrStreatName">
			<input type="text" name="${status.expression}"
				placeholder="socity Streat Colony Name" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="address.nearBy">
			<input type="text" name="${status.expression}"
				placeholder="Near By Location" value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="address.district">
			<input type="text" name="${status.expression}" placeholder="District"
				value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="address.city">
			<input type="text" name="${status.expression}" placeholder="City"
				value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="address.pin">
			<input type="text" name="${status.expression}" placeholder="Pin"
				value="${status.value}">
			<br />
		</spring:bind>

		<spring:bind path="address.Country">
			<input type="text" name="${status.expression}" placeholder="Country"
				value="${status.value}">
			<br />
		</spring:bind>

		<input type="submit" value="Create" />
	</form:form>
</div>
</body>
</html>