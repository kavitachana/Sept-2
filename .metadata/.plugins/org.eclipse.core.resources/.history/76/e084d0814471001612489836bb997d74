<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "com.food.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Delete</h1>
						
						<table style="width: 80%;">
							<tr>
								<th>Food ID</th>
								<th>Food Name</th>
								<th>Cuisine Type</th>
								<th>Number of Servings</th>
								<th>Price</th>
							</tr>
							
							<% DAO.readFromDB(); %>
							
							<%
							Food readToJSP = new Food();
							for (int i = 0; i < DAO.allFoods.size(); i++) { 
								readToJSP = DAO.allFoods.get(i);
							%>
							<tr>
								<td><%= readToJSP.getFoodID() %></td>
								<td><%= readToJSP.getName() %></td>
								<td><%= readToJSP.getCuisine() %></td>
								<td><%= readToJSP.getNumOfServings() %> </td>
								<td><%= readToJSP.getPrice() %></td>
							</tr>
							<% } %>
						</table>


</body>
</html>