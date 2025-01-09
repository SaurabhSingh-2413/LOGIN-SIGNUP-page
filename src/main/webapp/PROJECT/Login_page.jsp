<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN-Home</title>
<style>
	body{
		background-image: url("images/recep.jpg");
		background-size: cover;
	}
	.login{
		width: 250px;
		height: 330px;
		background: linear-gradient(to top, rgba(0,0,0,0.8), rgba(0,0,0,0.8));
		position: absolute;
		top: 150px;
		left: 10px;
		border-radius: 20px;
		padding: 20px;
	}
	.login h2{
		width: 220px;
		font-family: sans-serif;
		text-align: center;
		color: black;
		font-size: 22px;
		background-color: skyblue;
		background: radial-gradient(skyblue,white);
		border-radius: 10px;
		margin: 2px;
		padding: 8px;
	}
	.login input{
		width: 240px;
		height: 35px;
		background: transparent;
		border-bottom: 1px solid green ;
		border-top: none;
		border-left: none;
		border-right: none;
		color:white;
		font-size: 15px;
		letter-spacing: 2px;
		margin-top: 30px;
		font-family: sans-serif;
	}
	.login input:focus
	{
		outline: none;
	}
	::placeholder{
		color: aqua;
		font-family: Arial;
	}
	.btn{
		width: 250px;
		height: 40px;
		background: yellow;
		border: none;
		margin-top: 30px;
		font-size: 18px;
		border-radius: 10px;
		cursor: pointer;
		color: black;
	}
	.btn:hover{
		background: crimson;
	}
	.btn:hover{
		color: white;
	}
	
	.para{
		color: white;
		padding-top: 10px;
		padding-bottom: 10px;
		text-align: center;
	}
	.icons a{
		text-decoration: none;
		color: white ;
	}
	.icons ion-icon{
		color: yellowgreen;
		font-size: 30px;
		padding-left: 14px;
		padding-top: 5px;
	} 
	.icons ion-icon:hover{
		color: crimson;
	}
	a{
		position: absolute;
		text-decoration: none;
		color: white;
		text-align: center;
		margin-left: -157px;
		margin-top: 100px;
	}
	#ps{
		color: red;
		margin-left: -190px;
		margin-top: 130px;
	}
	h1{
		font-size: 60px;
		margin-left: 600px;
		margin-top: 150px;
	}
	label{
		font-size: 20px;
		margin-left: 600px;
		color: #fff;
		position: absolute;
		top: 230px;
	}
	.l1{
		font-size: 20px;
		margin-left: 600px;
		color: #fff;
		position: absolute;
		top: 260px;
	}
</style>
</head>
<body>
<h1>HOSPITAL</h1>
<label>Right now, our focus is on hospital operation</label>
<label class="l1">and taking care of our patients.</label>
	<form action="Login2.jsp">
	<div class="login">
	<h2>LOGIN HERE</h2>
	<input type="email" name="em1" placeholder="Enter Email Here">
	<input type="password" name="ps1" placeholder="Enter Password Here">
	<button class="btn">Login</button>
	
	<a href="Login_register.jsp">Register ?</a>
	<a id ="ps" href="Forget_pass.jsp">Forgotten password??</a>
	</div> 
	<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</form>
</body>
</html>