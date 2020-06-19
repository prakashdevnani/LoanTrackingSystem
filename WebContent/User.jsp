<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="header">
		<h2>Hi, <%=session.getAttribute("name")%></h2>
	</div>
	<div class="content">
		<!-- notification message -->
		<!-- logged in user information -->
		
		<a href="ShowDetails.jsp">
		<div class="profile_info" >
			<img src="user.svg.png"  />
			<strong>Complete Details</strong>
		</div>
		</a>
		
		<a href="loanApply.jsp">
		<div class="profile_info" >
			<img src="money.png"  />
			<strong>Apply For Loan</strong> 
		</div>
		</a>
		
		<a href="loanStatus.jsp">
		<div class="profile_info" >
			<img src="money.png"  />
			<strong>Check loan status</strong> 
		</div>
		</a>
		
		<a href="emiCalculator.jsp">
		<div class="profile_info" >
			<img src="money.png"  />
			<strong>Check loan EMI</strong> 
		</div>
		</a>
		
		<a href="logout.jsp" style="float:right;text-decoration:none;font-size:20px;color:#5F9EA0;">
		Logout</a>
		
	</div>

</body>
</html>