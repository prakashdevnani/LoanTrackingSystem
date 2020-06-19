<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="header">
	<h2>User Details</h2>
</div>
<form method="post" action="./reg">
	<div class="input-group">
		<label>Name: </label>
		<%=session.getAttribute("name") %>
	</div>
	<div class="input-group">
		<label>Email: </label>
		<%=session.getAttribute("email") %>
	</div>
	<div class="input-group">
		<label>Loan Amount: </label>
		<%=session.getAttribute("loanAmount") %>
	</div>
	<div class="input-group">
		<label>Loan Duration: </label>
		<%=session.getAttribute("loanDuration") %>
	</div>
	
	
</form>

</body>
</html>