<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Users</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<style>
body {
	min-height: 2000px;
	padding-top: 70px;
}
</style>
</head>
<body>
<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				<!-- Fixed navbar -->
				<nav class="navbar navbar-default navbar-fixed-top">
					<div class="container">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
									data-toggle="collapse" data-target="#navbar" aria-expanded="false"
									aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="/formbuilder/">Formbuilder</a>
						</div>
						<div id="navbar" class="navbar-collapse ">
							<ul class="nav navbar-nav">
								<li><a href="/">Home</a></li>
								<li><a href="/user/list">Users</a></li>
								<li><a href="/user/add" class="btn btn-secondary"> <span
										class="glyphicon glyphicon-plus"></span> ADD NEW USER
								</a>
								</li>

								<li><a href="/login">LOGIN<span class="sr-only">(current)</span></a></li>
							</ul>
						</div>
						<!--/.nav-collapse -->
					</div>
				</nav>

				<!-- end of nav -->
	<div class="container">
		<table class="table table-striped table-hover">
		<tr><th >ID</th><th>First Name</th><th>Last Name</th><th>Role</th><th>Operations</th><th>Delete</th></tr>
		<c:forEach items="${users}" var="user">
		<tr><td  class="col-sm-1" >${user.id}</td>
			<td  class="col-sm-1">${user.firstName}</td>
			<td  class="col-sm-1">${user.lastName}</td>
		<td  class="col-sm-1"><a href='view.html?id=${user.id}'>${user.role}</a></td>
		<td  class="col-sm-1"><a href='edit.html?id=${user.id}'>Edit</a></td>
		<td  class="col-sm-1"><a href='delete.html?id=${user.id}'>Delete</a></td>
		</tr>
		</c:forEach>
		</table>
		<a href="add.html"><button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-plus"></span> ADD NEW USER </button></a>  				
	</div>
</body>
</html>