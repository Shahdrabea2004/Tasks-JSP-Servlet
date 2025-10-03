<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Full Name: ${param.FullName}</h1>
<%
	String ID=request.getParameter("ID");
    out.print("<h1> your ID: "+ID+"</h>");
    
    String pass=request.getParameter("password");
    out.print("<h1> your password: "+pass+"</h>");
    
    String fav_lang=request.getParameter("fav_language");
    out.print("<h1> your fav_language: "+fav_lang+"</h>");
    
    
    String car=request.getParameter("cars");
    out.print("<h1> your cars: "+car+"</h>");
    
    ArrayList<String> arraylist =new ArrayList<>();
    arraylist.addAll(Arrays.asList(request.getParameterValues("vehicle")));
    out.print("<h1> your vehicle: "+arraylist+"</h>");
    
%>
</body>
</html>