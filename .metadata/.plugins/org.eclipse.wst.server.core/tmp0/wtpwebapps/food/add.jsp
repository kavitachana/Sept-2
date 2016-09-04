<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.food.*"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="formstyles.css" />

<title>Add an Item</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">

<link href="css/hiKavita.css" rel="stylesheet">

<style>
body {
	background-image: url("img/map.jpg");
}
</style>

</head>
<body>

	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="index.html">World Food
						Home</a></li>
				<li><a href="read.jsp">Add an Item</a></li>
				<li><a href="#">Delete an Item</a></li>
				<li><a href="#">Update an Item</a></li>
			</ul>
		</div>
		<div id="page-content-wrapper">
			<div class="container">
				<h1>Add an Item to the Menu</h1>
				<% Food addFood = new Food();%>
				
				<form action="addToDB" method="POST">
					<div class="form-group">
						<label for="Name of Food">Food Name:</label> <input
							type="text" class="form-control" name="name"
							placeholder="Enter food name">
					<%=addFood.getName()%>			
					</div>
					<div class="form-group">
						<label for="Cuisine Type">Type of Cuisine:</label> <input type="text"
							class="form-control" name="cuisine" placeholder="Enter cuisine type">
									<%=addFood.getCuisine()%>
					</div>
					<div class="form-group">
						<label for="Num of Servings">Number of Servings:</label> <input
							type="text" class="form-control" name="num_of_servings"
							placeholder="Enter number of servings">
							<%=addFood.getNumOfServings()%>
					</div>
					<div class="form-group">
						<label for="Price">Price:</label> <input type="text"
							class="form-control" name="price"
							placeholder="Enter price (ex. 9.50)">
							<%=addFood.getPrice()%>
					</div>
					<button type="submit" class="btn btn-default">Add to Menu</button>
				</form>
			</div>

				
			<%
				DAO.writeToDB(addFood);
			%>


		</div>
	</div>
	</div>
	</div>
	<!-- /#page-content-wrapper -->
</body>
</html>