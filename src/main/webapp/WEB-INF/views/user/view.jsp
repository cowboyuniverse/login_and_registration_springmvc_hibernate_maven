<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Profile</title>
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
<div class="row">
	<div class="col-xs-10 col-xs-offset-1 col1">
      <div class=" col-md-9 col-lg-9 "> 
                <table class="table table-user-information">
                    <tbody>
                    <div class="col-sm-10"><h4>Role: ${user.role} </h4></div>
                      <tr>
                        <td>Name:</td>
                        <td>${user.firstName} ${user.lastName}</td>
                      </tr>
                      <tr>
                        <td>Email:</td>
                        <td>${user.email}</td>
                      </tr>
                         <tr>
                   
                        <td>Address 1:</td>
                        <td>${user.address.address1}</td>
                      </tr>
                      <tr>
                        <td>Address 2:</td>
                        <td>${user.address.address2}</td>
                      </tr>
                      <tr>
                      	<td>City:</td>
                      	<td>${user.address.city}</td>
                      	<td>
                      </tr>
                      <tr>
                      	<td>State:</td>
                      	<td>${user.address.state}</td>
                      </tr>
                      <tr>
                      	<td>Zip Code</td>
                      	<td>${user.address.zip}</td>
                      </tr>
                      <tr>
                      	<td>Country</td>
                      	<td>${user.address.country}</td>
                      </tr>
                      <tr>
                      	<td>Home Phone</td>
                      	<td>${user.address.phoneHome}</td>
                      </tr>
                      <tr>
                      	<td>Work Phone</td>
                      	<td>${user.address.phoneWork}</td>
                      </tr>
                      <tr>
                      	<td>Mobile phone</td>
                      	<td>${user.address.phoneCell}</td>
                      </tr>
                      <tr>
                       <td  class="col-sm-1"> <a href="/user/list"><button class="btn btn-primary btn-block">User List</button> </a></td>
                        <td class="col-sm-1"> <a href='edit?id=${user.id}'><button class="btn btn-primary btn-block">Edit User</button></a></td>
                      </tr>
                    </tbody>
                </table>
             </div>
			</div>
		</div>
	</body>
</html>






