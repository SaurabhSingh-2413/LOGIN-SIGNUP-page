<%@page import="mypack1.Conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update pass-stage</title>
</head>
<body>
<%
String email = request.getParameter("e1");
String newpass = request.getParameter("p1");
int flag = 0;
try{
	Connection con = Conn.getCon();
	Statement st = con.createStatement();
	ResultSet set = st.executeQuery("select * from Login2 where user_name='"+email+"'");
	
	while(set.next())
	{
		flag=1;
		st.executeUpdate("update Login2 set password='"+newpass+"' where user_name='"+email+"'");
		response.sendRedirect("Forget_pass.jsp?msg=done");
	}
	if(flag==0)
	{
		response.sendRedirect("Forget_pass.jsp?msg=invalid");
	}
	
}catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>