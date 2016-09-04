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

<title>All Menu Items</title>

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
				<li><a href="formadd.html">Add an Item</a></li>
				<li><a href="#">Delete an Item</a></li>
				<li><a href="#">Update an Item</a></li>
			</ul>
		</div>
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div style="background-color: #bcd279" class="col-lg-12">
						<h1>All Menu Items</h1>
						<br>

						<table style="width: 80%;">
							<tr>
								<th>Food ID</th>
								<th>Food Name</th>
								<th>Cuisine Type</th>
								<th>Number of Servings</th>
								<th>Price</th>
							</tr>

							<%
								DAO.readFromDB();
							%>

							<%
								Food readToJSP = new Food();
								for (int i = 0; i < DAO.allFoods.size(); i++) {
									readToJSP = DAO.allFoods.get(i);
							%>
							<tr>
								<td><%=readToJSP.getFoodID()%></td>
								<td><%=readToJSP.getName()%></td>
								<td><%=readToJSP.getCuisine()%></td>
								<td><%=readToJSP.getNumOfServings()%></td>
								<td><%=readToJSP.getPrice()%></td>
							</tr>
							<%
								}

								DAO.allFoods.clear();
							%>


						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->
</body>
</html>