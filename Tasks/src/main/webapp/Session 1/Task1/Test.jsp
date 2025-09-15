<!-- create JSP FILE and on file do
* define 2 variable id name with any values 
* define function with input id and name and return concatination with id and name
* call function and print it on jsp file
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task 1</title>
<style>
   body {
       background: linear-gradient(135deg, #f0f8ff, #dfe9f3);
       font-family: Arial, sans-serif;
       text-align: center;
       margin-top: 50px;
       animation: fadeIn 2s ease-in-out;
   }
   h1 {
       color: #2c3e50;
       background-color: #ecf0f1;
       padding: 15px 25px;
       border-radius: 15px;
       display: inline-block;
       box-shadow: 0 8px 15px rgba(0,0,0,0.2);
       transform: scale(0.8);
       animation: popUp 1.2s ease-in-out forwards;
   }
   @keyframes fadeIn {
       from { opacity: 0; }
       to { opacity: 1; }
   }
   @keyframes popUp {
       0% { transform: scale(0.5) rotate(-10deg); opacity: 0; }
       50% { transform: scale(1.1) rotate(3deg); opacity: 1; }
       100% { transform: scale(1) rotate(0deg); opacity: 1; }
   }
   h1:hover {
       background-color: #3498db;
       color: white;
       transform: scale(1.1);
       box-shadow: 0 12px 25px rgba(0,0,0,0.3);
       transition: all 0.3s ease-in-out;
       cursor: pointer;
   }
   
</style>

</head>
<body>
<%!
 String id,name;
 String concatValues(String name,String id){
	 return "Your Name: "+name+"<br><br>"+"Your ID: "+id;
 }
%>
<%= "<h1>"+concatValues("Shahd Rabea Eid","1235896")+"</h>" %>
</body>
</html>