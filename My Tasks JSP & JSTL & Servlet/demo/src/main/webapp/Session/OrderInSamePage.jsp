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
	<form action="OrderInSamePage.jsp" method="post">
		Enter Your Order: <input type="text" name="order"> <input
			type="submit" value="select item"> <br>
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

		for (String order : orders)
			out.print("<h1>" + order + "</h1>");
		%>
	</form>
</body>
</html>