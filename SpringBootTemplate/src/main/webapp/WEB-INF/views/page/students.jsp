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

		<table class="tableCustom">

			<tr class="tableRow">
				<th class="tableCustom">Enrollment Number</th>
				<th class="tableCustom">Student Name</th>
				<th class="tableCustom">Father Name</th>
				<th class="tableCustom">Mother Name</th>
				<th class="tableCustom">Date of Birth</th>
				<th class="tableCustom">Date of admission</th>
				<th class="tableCustom">Previous School</th>
				<th class="tableCustom">Standard/Course</th>
				<th class="tableCustom">Section/Branch</th>
				<th class="tableCustom">Address Link</th>

			</tr>


			<c:forEach var="std" items="${studentList}">
				<tr>
					<td class="tableCustom"><c:out value="${std.enrollmentNumner}" /></td>
					<td class="tableCustom"><c:out value="${std.name}" /></td>
					<td class="tableCustom"><c:out value="${std.fatherName}" /></td>
					<td class="tableCustom"><c:out value="${std.motherName}" /></td>
					<td class="tableCustom"><c:out value="${std.dob}" /></td>
					<td class="tableCustom"><c:out value="${std.doj}" /></td>
					<td class="tableCustom"><c:out value="${std.prevSchoolName}" /></td>
					<td class="tableCustom"><c:out value="${std.std}" /></td>
					<td class="tableCustom"><c:out value="${std.section}" /></td>
					<td class="tableCustom"><a class="button" href="showAddress?addId=${std.address.id}"> <c:out
								value="${std.address.id}" />
					</a></td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>