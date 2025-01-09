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
String id = request.getParameter("Id");
int i=0;
try
{
	Connection ctn = Conn.getCon();
	String sql = "delete from ducat_inst where Id=?";
	PreparedStatement ps = ctn.prepareStatement(sql);
	ps.setString(1, id);
	i=ps.executeUpdate();
	
}catch(Exception e)
{
	e.printStackTrace();
}
if(i>0)
{
	response.sendRedirect("SQL_data_display.jsp?msg=del");
}
else
{
	response.sendRedirect("SQL_data_display.jsp?msg=not-del");
}
%>
</body>
</html>