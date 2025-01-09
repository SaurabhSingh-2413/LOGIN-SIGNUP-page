<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="mypack1.Conn"%>
<%@page import="java.sql.Connection"%>
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
String Id = request.getParameter("Id");
try{
	Connection ctn = Conn.getCon();
	String sql = "select * from ducat_inst where Id='"+Id+"'";
	PreparedStatement ps = ctn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery(); 
	while(rs.next())
	{
		String id = rs.getString(1);
		String Name = rs.getString(2);
		String Email = rs.getString(3);
		String Phone = rs.getString(4);
		String Address = rs.getString(5);
%>
<form action="SQL_data_Update3.jsp">
<pre>
Id     : <input type="number" placeholder="Enter id here" name="i1" value="<%=id%>">
Name   : <input type="text" placeholder="Enter name here" name="n1" value="<%=Name%>">
Email  : <input type="email" placeholder="Enter email here" name="e1" value="<%=Email%>">
Phone  : <input type="number" placeholder="Enter phone_no here" name="p1" value="<%=Phone%>">
Address: <input type="text" placeholder="Enter address here" name="a1" value="<%=Address%>">	
<button type="submit">Update</button>
</pre>
</form>
<%
	} // while loop is closed;
	
}catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>