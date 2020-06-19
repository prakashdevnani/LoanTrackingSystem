<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="style.css">
	
</head>
<body>
<div class="header">
	<h2>Loan Status</h2>
</div>
<form>
	<div class="input-group">
		<label>Loan Amount</label>
		<%=session.getAttribute("loanAmount") %>
	</div>
	<div class="input-group">
		<label>Loan Duration</label>
		<%=session.getAttribute("loanDuration") %>
	</div>
	<div class="input-group">
		<label>Application Status</label>
		<%=session.getAttribute("application") %>
	</div>
</form>