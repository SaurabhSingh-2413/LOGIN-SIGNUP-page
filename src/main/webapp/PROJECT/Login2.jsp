<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mypack1.Conn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h3{
	color: red;
	position: absolute;
	top: 10px;
	font-size: 25px;
}
</style>
</head>
<body>
<%
//data retrieve/ fetch.
String s1 = request.getParameter("em1");
String s2 = request.getParameter("ps1");
int flag=0;
try{
	Connection con = Conn.getCon();
	String sql = "select * from Login2";
	PreparedStatement ps = con.prepareStatement(sql);
	
	ResultSet set = ps.executeQuery();
	
while(set.next())
{
	if(s1.equals(set.getString(2)) && s2.equals(set.getString(3)))
	{
		flag=1;
	}
}
}catch(Exception e)
{
	e.printStackTrace();
}
if(flag==1)
{
	response.sendRedirect("index.jsp");
}	
else{
	out.print("<html><body><h3>Wrong username or password</h3></body></html>");
	RequestDispatcher rd = request.getRequestDispatcher("Login_page.jsp");
	rd.include(request, response);
	
	
}
%>
</body>
</html>