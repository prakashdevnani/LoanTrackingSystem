<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>User Registration</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script type="text/javascript" src="script.js"></script>
</head>
<body onload="myFunction('register_btn')">
<div class="header">
	<h2>Register</h2>
</div>
<form method="post" action="./reg">
	<div class="input-group">
		<label>Username</label>
		<input type="text" name="username" onfocusout="nameCheck('username','register_btn')">
	</div>
	<div class="input-group">
		<label>Email</label>
		<input type="email" name="email" onfocusout="emailCheck('email','register_btn')">
	</div>
	<div class="input-group">
		<label>Password</label>
		<input type="password" name="password_1" onfocusout="passwordCheck('password_1','register_btn')">
	</div>
	<div class="input-group">
		<label>Confirm password</label>
		<input type="password" name="password_2" onfocusout="passwordTCheck('password_2','register_btn')">
	</div>
	<div class="input-group">
		<button type="submit" class="btn" name="register_btn">Register</button>
	</div>
	<p>
		Already a member? <a href="Login.jsp">Sign in</a>
	</p>
</form>
</body>
</html>