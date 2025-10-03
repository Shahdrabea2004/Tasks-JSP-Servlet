<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.* , model.* "%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<Student> students = new ArrayList<>();
	students.add(new Student(1, "shahd", true));
	students.add(new Student(2, "ahmed", true));
	students.add(new Student(3, "mona", false));
	students.add(new Student(4, "omar", true));
	students.add(new Student(5, "sara", false));
	students.add(new Student(6, "ali", true));
	students.add(new Student(7, "mai", true));
	students.add(new Student(8, "youssef", false));
	students.add(new Student(9, "hana", true));
	students.add(new Student(10, "mahamd", true));
	
	pageContext.setAttribute("allStudents", students);
	%>
	<table border="1" cellpadding="5" cellspacing="0" width="100%">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Active</th>
		</tr>
		<c:forEach var="x" items="${allStudents}">
		<tr>
			<td>${x.id}</td>
			<td>${x.name}</td>
			<td>${x.active}</td>
			<td>
			<c:choose >
			<c:when test="${x.active}">Student Is Active</c:when>
			<c:otherwise>Student Is Note Active</c:otherwise>
			</c:choose>
			</td>
		</tr>
		</c:forEach>
		
		

	</table>
</body>
</html>