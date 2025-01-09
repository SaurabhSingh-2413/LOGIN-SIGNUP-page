<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="mypack1.Conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table{
	position: absolute;
	left: 10%;
}
th{
	padding: 20px;
	background-color: lime;
}
td{
	padding: 20px;
}
.btn{
	position: absolute;
	left: 140vh;
	top:5vh;
	height: 40px;
	width: 70px;
	background-color: pink;
	border-bottom-left-radius: 10px;
	border-top-right-radius: 10px;
}
.btn:hover {
	background-color: white;
	border-radius: 50%;
	
}
.btn a{
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
	%>
	<h1 style="color: green;">Updated successfull.</h1>
	<%
}
if("not-done".equals(msg))
{
	%>
	<h1 style="color: red;">Sorry!! Not Update.</h1>
	<%
}
if("del".equals(msg))
{
	%>
	<h1 style="color: green;">Delete successfull.</h1>
	<%
}
if("not-del".equals(msg))
{
	%>
	<h1 style="color: red;">Sorry!! Not delete.</h1>
	<%
}
if("add-done".equals(msg))
{
	%>
	<h1 style="color: green;">Add data successfully.</h1>
	<%
}
if("not-add".equals(msg))
{
	%>
	<h1 style="color: red;">Sorry !! Data not add.</h1>
	<%
}
%>
<table border="1">
<center>
<h1>MYSQL DATA</h1>
</center>
<thead>
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Address</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<%
	Connection cnt = Conn.getCon();
	String sql = "select * from ducat_inst";
	PreparedStatement ps = cnt.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
		String Id = rs.getString(1);
		String Name = rs.getString(2);
		String Email = rs.getString(3);
		String Phone = rs.getString(4);
		String Address = rs.getString(5);
		%>
		<tr>
		<td><%=Id %></td>
		<td><%=Name %></td>
		<td><%=Email %></td>
		<td><%=Phone %></td>
		<td><%=Address %></td>
		<td><a href="SQL_data_display2.jsp?Id=<%out.print(Id);%>">Update</a> /
		<a href="SQL_data_delete.jsp?Id=<%out.print(Id);%>">Delete</a></td>
		</tr>
		<%
	}
%>
</tbody>
</table>
<button class="btn"><a href="SQL_add-data_4.jsp">Add data</a></button>
</body>
</html>