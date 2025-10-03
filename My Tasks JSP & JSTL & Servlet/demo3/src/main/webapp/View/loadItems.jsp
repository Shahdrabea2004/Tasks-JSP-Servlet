<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Items</title>
   
</head>
<body>
<div class="layer">
    <table>
        <h1>Items</h1>
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>TOTAL_NUMBER</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
         
          <c:forEach var="item" items="${itemsData}">
        <tr>
          
            <td><strong>${item.id}</strong></td>
            <td>${item.name}</td>
            <td>${item.price}</td>
            <td>${item.totalNumber}</td>
            <!--  <td>
                <a>Update</a>
                <a>Delete</a>
            </td>
            -->
           
        </tr>
         </c:forEach> 
        </tbody>
    </table>


    <button class="f"><a href="" >Add Item</a></button>


</div>

</body>
</html>
