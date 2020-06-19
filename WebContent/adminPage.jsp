<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="loantrackingsystem.ConnectionCreator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn=new ConnectionCreator().connectInit();
	PreparedStatement stat=conn.prepareStatement("select * from table_user");
	ResultSet rs=stat.executeQuery();
%>
<div style="width:100%">
<form method="post" action="./accept">
<div style="width:40%;float:left">
<input name="input" type="text"/>
</div>
<div style="width:25%;float:left">
<input type=submit name=submit value="accept"/>
</div>
</form>
<div style="width:25%;float:left">
<a href="logout.jsp">logout</a>
</div>
</div>

<table>
	<tr>
		<th>Sno</th>
		<th>Name</th>
		<th>Loan Amount</th>
		<th>Loan Duration</th>
		<th>Email</th>
		<th>Application</th>
	</tr>
	<%
	while(rs.next()){ 
		out.print("<tr><td>"+rs.getInt(1)+"</td>");
		out.print("<td>"+rs.getString(2)+"</td>");
		out.print("<td>"+rs.getFloat(4)+"</td>");
		out.print("<td>"+rs.getFloat(5)+"</td>");
		out.print("<td>"+rs.getString(6)+"</td>");
		out.print("<td>"+rs.getString(7)+"</td></tr>");
	} %>
</table>
</body>
</html>