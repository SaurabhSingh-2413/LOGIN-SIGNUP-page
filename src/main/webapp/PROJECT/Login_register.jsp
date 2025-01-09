<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="mypack1.Conn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register-stage</title>
<style>
body{
	background-image: url("images/register.jpg");
	background-size: cover;
}
.log{
	position: absolute;
	background-color: #8166d9; 
	height: 250px;
	width: 265px;
	top: 24%;
    left: 63.5%;
	border-radius: 15px;
	padding: 20px;
}
.log input{
	height: 35px;
	width: 245px;
	background: transparent;
	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom-color: red;
	color: white;
	font-size: 14px;
	padding: 10px;
}
.log input:focus{
	outline: none;
}
::placeholder{
	color: white;
	font-size: 17px;
}
.btn{
		width: 250px;
		height: 40px;
		background: aqua;
		border: none;
		margin-top: 166px;
		font-size: 18px;
		border-radius: 10px;
		cursor: pointer;
		color: black;
}
.btn:hover {
	background-color: white;
}
label{
	font-size: 20px;
	position: absolute;
    left: 70px;
    top: 4px;
    font-style: oblique;
}
.i1{
	position: absolute;
	top: 45px;
}
.i2{
	position: absolute;
	top: 100px;
}
</style>
</head>
<body>
<form action="Login_register2.jsp">
<div class="log">
	<label>REGISTER HERE</label>
	<hr>
	<input class="i1" type="email" name="e1" placeholder="Enter your email">
	<input class="i2" type="password" name="p1" placeholder="Enter password">
	<button class="btn">Register</button>
</div>
</form>
</body>
</html>