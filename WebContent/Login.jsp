<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="header">
	<h2>Login</h2>
</div>
<form method="post" action="./login">
	<div class="input-group">
		<label>Email</label>
		<input type="text" name="email" >
	</div>
	<div class="input-group">
		<label>Password</label>
		<input type="password" name="pass" >
	</div>
	<div class="input-group">
		<button type="submit" class="btn" name="login_btn">Login</button>
	</div>
</form>
</body>
</html>