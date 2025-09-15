<!--
create 2 JSP FILE and on file do
* in first file create form with input and method type post
fullName input text ,
password input text ,
age  input text , 
address radio button with values (cairo, alex , menofia),
address select input with values (cairo, alex , menofia)

* in second file 
receive all inputs and print there on file 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form First File</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<form action="SecondFile.jsp" method="post">
		<!-- Info -->
		Your Name: <input type="text" name="username"
			placeholder="Enter Username" required><br> <br>
		Your Password: <input type="password" name="password"
			placeholder="Enter Password" required><br> <br>
		Your Password: <input type="text" name="age" placeholder="Enter Age"
			required><br> <br>
		<!-- Radio Button -->

		<p>Please Select your address:</p>

		<input type="radio" id="cairo" name="Your_city1" value="cairo">
		<label for="cairo">Cairo</label> <input type="radio" id="alex"
			name="Your_city1" value="alex"> <label for="alex">Alexandria</label>

		<input type="radio" id="menofia" name="Your_city1" value="menofia">
		<label for="menofia">Menofia</label> <br> <br>
      
		<!-- Select -->
		<label for="city">Choose Your City: </label> <select name="Your_city2"
			id="city">
			<option value="cairo">Cairo</option>
			<option value="alex">Alexandria</option>
			<option value="menofia">Menofia</option>
		</select> <br> <br>

		<button type="submit">Submit</button>

	</form>
</body>
</html>