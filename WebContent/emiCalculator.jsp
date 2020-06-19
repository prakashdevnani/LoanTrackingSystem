<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Emi Calculator</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="header">
	<h2>Emi</h2>
</div>
<form>
	<div class="input-group">
		<%
		float loanAmt=(Float)session.getAttribute("loanAmount");
		float loanDur=(Float)session.getAttribute("loanDuration");
		float val=(loanAmt*9*(float)Math.pow(10,loanDur))/((float)Math.pow(10,loanDur)-1);
		%>
		<%=val %>
	</div>
</form>

</body>
</html>