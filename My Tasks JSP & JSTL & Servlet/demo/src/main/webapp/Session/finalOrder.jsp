<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Your Order is: ${param.order}  -->
	<%
	ArrayList<String> orders = (ArrayList<String>) session.getAttribute("AllOrders");
	if (orders == null) {
		orders = new ArrayList<>();
		session.setAttribute("AllOrders", orders);

	}

	String selectOrder = request.getParameter("order");

	if (selectOrder != null && !selectOrder.trim().isEmpty()) {
		orders.add(selectOrder);
	}

	out.print("<h1>" + orders + "</h1>");
	%>
</body>
</html>