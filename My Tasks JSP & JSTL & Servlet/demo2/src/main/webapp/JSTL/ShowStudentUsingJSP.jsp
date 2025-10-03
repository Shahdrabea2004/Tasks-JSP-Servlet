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
	students.add(new Student(10, "karim", true));
	%>
	<table border="1" cellpadding="5" cellspacing="0" width="100%">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Active</th>
		</tr>

		<%
		for (int i = 0; i < students.size(); i++) {
			Student s = students.get(i);
		%>
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getName()%></td>
			<td><%=s.isActive()?"Student is Active":"Student is Not Active"%></td>
		</tr>
		<%
		}
		%>

	</table>
</body>
</html>