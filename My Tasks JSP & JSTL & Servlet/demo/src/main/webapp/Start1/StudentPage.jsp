<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Info</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #ACB6E5);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .card {
        background: white;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 6px 15px rgba(0,0,0,0.3);
        text-align: center;
        width: 350px;
        animation: fadeIn 1.5s ease-in-out;
    }
    h1 {
        margin-bottom: 20px;
        color: #2c3e50;
    }
    p {
        font-size: 18px;
        color: #34495e;
        margin: 10px 0;
    }
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

</head>
<body>
    <div class="card">
        <h1>Student Information</h1>
        <%
            Student student = new Student();
            student.setId(42210296);
            student.setName("shahd");
        %>
        <p><strong>ID:</strong> <%= student.getId() %></p>
        <p><strong>Name:</strong> <%= student.getName() %></p>
    </div>
</body>
</html>
