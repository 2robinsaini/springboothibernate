<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="<c:url value="res/favicon.ico"/>"
	type="image/x-icon" />
<title>Insert title here</title>
<link href="res/css/tab.css" rel="stylesheet" />
<link href="res/css/custom.css" rel="stylesheet" />
</head>
<body>

	<div>

		<table>

			<tr class="tableRow">
				<th>Enrollment Number</th>
				<th>Student Name</th>
				<th>Father Name</th>
				<th>Mobile Number</th>
				<th>Date of Birth</th>
				<th>Date of admission</th>
				<th>Previous School</th>
				<th>Standard/Course</th>
				<th>Section/Branch</th>
				<th>Address Link</th>

			</tr>


			<c:forEach var="std" items="${studentList}">
				<tr>
					<td><c:out value="${std.enrollmentNumner}" /></td>
					<td><c:out value="${std.name}" /></td>
					<td><c:out value="${std.fatherName}" /></td>
					<td><c:out value="${std.motherName}" /></td>
					<td><c:out value="${std.dob}" /></td>
					<td><c:out value="${std.doj}" /></td>
					<td><c:out value="${std.prevSchoolName}" /></td>
					<td><c:out value="${std.std}" /></td>
					<td><c:out value="${std.section}" /></td>
					<td><a class="button" href="showAddress?addId=${std.address.id}"> <c:out
								value="${std.address.id}" />
					</a></td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>