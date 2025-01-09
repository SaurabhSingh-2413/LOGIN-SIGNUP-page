<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change-Password-stage</title>
<style>
body{
	background-image: url("images/forget.png");
	background-size: cover;
	background-repeat: no-repeat;
}
.main{
	position: absolute;
	background-color: #399696;
	height: 214px;
    width: 404px;
    left: 16px;
    top: 100px;
	border: solid black;
	border-radius: 9px;
}
.lab1{
	position: absolute;
	left: 53px;
	top: 50px;
	color: white;
	font-size: 20px;
}
.lab2{
	position: absolute;
	left: 53px;
	top: 100px;
	color: white;
	font-size: 20px;
}
button{
	position: absolute;
	top: 160px;
	left: 55px;
	border-radius: 7px;
	border: solid black 1px;
}
button:hover {
	background-color: #85A8A8;
	color: white;
}
input{
	position: absolute;
	top: 25px;
	left: 0px;
	width: 200px;
	border-radius: 3px;
	border-left: none;
	border-top: none;
	border-right: none;
}
a{
	position: absolute;
	top: 161px;
	left: 130px;
	background-color: white;
	height: 17px;
	width: 50px;
	text-decoration: none;
	border-radius: 7px;
	color: black;
	border: solid black 1px;
	padding-left: 10px;
	font-size: 16px;
	
}
a:hover {
	color: white;
	background-color: #85A8A8;
}
h1{
	position: absolute;
	margin-top: -133px;
	margin-left: 2px;
	color: black;
}
.lab3{
	color: white;
	margin-left: 10px;
	font-size: 20px;
}
</style>
</head>
<body>
<form action="Forget_pass2.jsp">
<div class="main">
<label class="lab3">Change password :</label>
<hr>
<div class="lab1">
<label for="e1">Enter User_name</label>
<input type="email" placeholder="user_name" name="e1" id="e1">
</div>
<div class="lab2">
<label for="p1">Enter New Password</label>
<input type="password" placeholder="Enter new password" name="p1" id="p1">
</div>
<button type="submit">Save</button>
<a href="Login_page.jsp">Home</a>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
	%>
	<h1 style="color: green;">Password change successfully !!</h1>
	<%
}
if("invalid".equals(msg))
{
	%>
	<h1 style="color: red;">Wrong username check again!!</h1>
	<%
}
%>
</form>
</body>
</html>