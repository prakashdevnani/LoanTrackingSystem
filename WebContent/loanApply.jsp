<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body onload="myFunctionLoan()">
<div class="header">
	<h2>Login</h2>
</div>
<form method="post" action="./applyLoan">
	<div class="input-group">
		<label>Loan Amount</label>
		<input type="text" name="amount"  onfocusout="loanAmount()">
	</div>
	<div class="input-group">
		<label>Duration(in years)</label>
		<input type="text" name="time" onfocusout="duration()">
	</div>
	<div class="input-group">
		<button type="submit" class="btn" name="apply">Apply</button>
	</div>
</form>
<script>
	var amt=0,dur=0;
	function myFunctionLoan(){
		document.querySelector("button[name=apply]").style.opacity=.5;
		document.querySelector("button[name=apply]").disabled=true;
		document.querySelector("button[name=apply]").ariaDisabled=true;
	}
	function loanAmount(){
		if(document.querySelector("input[name=amount]").value.length>0){
			amt=1;
			document.querySelector("input[name=amount]").style.borderColor='black';
			appButton();
		}
		else{
			amt=0;
			document.querySelector("input[name=amount]").placeholder="Please enter the amount";
			document.querySelector("input[name=amount]").style.borderColor='red';
		}
	}
	function duration(){
		if(parseFloat(document.querySelector("input[name=time]").value)>=8){
			dur=1;
			document.querySelector("input[name=time]").style.borderColor='black';
			appButton();
		}
		else{
			dur=0;
			document.querySelector("input[name=time]").placeholder="Please enter time >= 8 year";
			document.querySelector("input[name=time]").style.borderColor='red';
		}
	}
	function appButton(){
		if(amt && dur){
			document.querySelector("button[name=apply]").style.opacity=1;
			document.querySelector("button[name=apply]").disabled=false;
			document.querySelector("button[name=apply]").ariaDisabled=false;	
		}
	}
</script>
</body>
</html>