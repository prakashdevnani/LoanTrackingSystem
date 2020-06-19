function myFunction(register_btn){
	//username,email,password_1,password_2,
	
	document.querySelector("button[name="+register_btn+"]").style.opacity=.5;
	document.querySelector("button[name="+register_btn+"]").disabled=true;
	document.querySelector("button[name="+register_btn+"]").ariaDisabled=true;
	
}
var name=0,echeck=0,pass=0,passT=0,passValue="";

function nameCheck(username,register_btn){
	if(document.querySelector("input[name="+username+"]").value.length>0){
		name=1;
		document.querySelector("input[name="+username+"]").style.borderColor='black';
		regButton();
	}
	else{
		name=0;
		document.querySelector("input[name="+username+"]").placeholder="Please enter User Name";
		document.querySelector("input[name="+username+"]").style.borderColor='red';
	}
}

function emailCheck(email,register_btn){
	const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	if(re.test(document.querySelector("input[name="+email+"]").value)){
		echeck=1;
		document.querySelector("input[name="+email+"]").style.borderColor='black';
		regButton();
	}
	else{
		echeck=0;
		document.querySelector("input[name="+email+"]").value="";
		document.querySelector("input[name="+email+"]").placeholder="Please correct Email Address";
		document.querySelector("input[name="+email+"]").style.borderColor='red';
	}
}

function passwordCheck(password,register_btn){
	if(document.querySelector("input[name="+password+"]").value.length>0){
		pass=1;
		this.passValue=document.querySelector("input[name="+password+"]").value;
		document.querySelector("input[name="+password+"]").style.borderColor='black';
		regButton();
	}
	else{
		pass=0;
		document.querySelector("input[name="+password+"]").placeholder="Please enter Password";
		document.querySelector("input[name="+password +"]").style.borderColor='red';
	}
}


function passwordTCheck(password,register_btn){
	if(document.querySelector("input[name="+password+"]").value.length>0 &&
			document.querySelector("input[name="+password+"]").value===this.passValue){
		passT=1;
		document.querySelector("input[name="+password+"]").style.borderColor='black';
		regButton(register_btn);
	}
	else{
		passT=0;
		document.querySelector("input[name="+password+"]").placeholder="Password Does not Match/Appropriate Length";
		document.querySelector("input[name="+password +"]").style.borderColor='red';
	}
}

function regButton(register_btn){
	if(name && echeck && pass && passT){
		document.querySelector("button[name="+register_btn+"]").style.opacity=1;
		document.querySelector("button[name="+register_btn+"]").disabled=false;
		document.querySelector("button[name="+register_btn+"]").ariaDisabled=false;
	}
}