<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.time.LocalDateTime" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Examples</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #9face6);
        margin: 0;
        padding: 0;
        text-align: center;
    }
    h1 {
        color: white;
        background: rgba(0,0,0,0.5);
        padding: 20px;
        margin: 25px auto;
        width: 70%;
        border-radius: 15px;
        box-shadow: 0 6px 15px rgba(0,0,0,0.4);
        transition: transform 0.3s, background 0.3s;
        animation: fadeIn 1.5s ease-in-out;
    }
    h1:hover {
        transform: scale(1.05);
        background: rgba(0,0,0,0.7);
    }
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px);}
        to { opacity: 1; transform: translateY(0);}
    }
    .btn {
        display: inline-block;
        margin: 15px;
        padding: 12px 25px;
        font-size: 18px;
        color: white;
        background: #ff6f61;
        border: none;
        border-radius: 30px;
        text-decoration: none;
        box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        transition: background 0.3s, transform 0.3s;
    }
    .btn:hover {
        background: #ff3b2e;
        transform: scale(1.1);
    }
</style>
</head>
<body>
<h1>Welcome EveryOne Local Date Now <%= new Date() %></h1>
<h1>HI EvreyOne  my name is SHAHD</h1>
<h1>Welcome EveryOne Local Date Now <%=LocalDateTime.now() %></h1>

<%
    Date date=new Date();
    out.print("<h1>Today using JSP Scriptlet: <br>"+date+"</h1>");
    LocalDateTime today=LocalDateTime.now();
    out.print("<h1>Today using JSP Scriptlet: <br>"+today+"</h1>");
    
    System.out.print("JSP FIle");
 
    for(int i=0;i<n;i++){
    	out.print("<h1>"+"Shahd "+"</h1>");
    }
    
    out.print("<h1>" + printName("Abdo") + "</h1>");

%>
<%= printName("<h1> hala </h1> ") %>
<%!
    int n=5;
    String printName(String name){
	return name.toUpperCase();
    }
    
%>
<%= printName("<h1> rabea </h1> ") %>

</body>
</html>