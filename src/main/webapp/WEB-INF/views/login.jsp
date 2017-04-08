<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href="styles/signin.css" rel="stylesheet">
</head>

<body>
<div class="container">

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
                                <a class="navbar-brand" href="/">Login and Registration</a>
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
<br><br><br>
    <section>
        <form class="form-signin" action="login" method="post">
            <h2 class="form-signin-heading text-center">Please sign in</h2>
            <input class="form-control text-center" type="email"
                   placeholder="Email address" name="email" /> <input
                class="form-control text-center" type="password"
                placeholder="Password" name="password" />
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign
                in</button>
            <a class="btn btn-lg btn-danger btn-block" href="/">Back</a>
        </form>
    </section>

    <footer></footer>

</div>
</body>

</html>