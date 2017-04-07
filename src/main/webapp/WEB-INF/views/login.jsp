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

    <header> </header>

    <section>
        <form class="form-signin" action="login" method="post">
            <h2 class="form-signin-heading text-center">Please sign in</h2>
            <input class="form-control text-center" type="email"
                   placeholder="Email address" name="email" /> <input
                class="form-control text-center" type="password"
                placeholder="Password" name="password" />
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign
                in</button>
            <a class="btn btn-lg btn-danger btn-block" href="index">Back</a>
        </form>
    </section>

    <footer></footer>

</div>
</body>

</html>