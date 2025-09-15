<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result On Second File</title>
<link rel="stylesheet" href="style.css">
</head>
<body class="result-page">
    <h1>Your Submitted Data</h1>
	<%
	String name = request.getParameter("username");
	String pass = request.getParameter("password");
	String age = request.getParameter("age");
	String cityRadio = request.getParameter("Your_city1");
	String citySelect = request.getParameter("Your_city2");
	%>

    <div class="result-card">
        <b>Name: </b> <span><%= name %></span>
    </div>

    <div class="result-card">
        <b>Password: </b> <span><%= pass %></span>
    </div>

    <div class="result-card">
        <b>Age: </b> <span><%= age %></span>
    </div>

    <div class="result-card">
        <b>Address: </b> <span><%= cityRadio %></span>
    </div>

    <div class="result-card">
        <b>City: </b> <span><%= citySelect %></span>
    </div>
</body>
</html>