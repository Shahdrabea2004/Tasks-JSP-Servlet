<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="Header.html" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>


</head>
<body>
	<%!String function() {
		return "Hi Sir this Main Profile";
	}%>
	<h1><%=function()%></h1>
</body>
</html>
<jsp:include page="Footer.html" />