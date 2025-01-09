<%@page import="java.sql.PreparedStatement"%>
<%@page import="mypack1.Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered</title>
<style>
h1{
	margin-left: 30%;
}
a{
	position: absolute;
	
	height: 25px;
	width: 60px;
	border-radius: 10px;
	background-color: yellow;
	color: black;
	text-decoration: none;
	padding: 5px;
	margin-left: 47%;
	text-align: center;
	border: solid black 2px;
	font-size: 20px;
	top: 89px;
}
a:hover {
	background-color: aqua;
}
.H1{
    position: absolute;
    left: 56px;
}
</style>
</head>
<body>
<%
String s1 = request.getParameter("e1");
String s2 = request.getParameter("p1");
int i=0;

try{
	
	Connection con = Conn.getCon();
	String sql = "insert into Login2(user_name,password) values (?,?)";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, s1);
	ps.setString(2, s2);
	i=ps.executeUpdate();
}catch(Exception e)
{
	e.printStackTrace();
}
if(i>0)
{
	%>
	<h1>Register Successfull now you Login.</h1>
	<a href="Login_page.jsp">Home</a>
	<%
}else{
	%>
	<h1 class="H1">Register not successfull</h1>
	<a href="Login_page.jsp">Home</a>
	<%
}
%>
</body>
</html>