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
String name = request.getParameter("n1");
String email = request.getParameter("e1");
String phone = request.getParameter("p1");
String address = request.getParameter("a1");
int i=0;

try{
	Connection ctn = Conn.getCon();
	String sql = "insert into ducat_inst(Name,Email,Phone,Address) values (?,?,?,?)";
	PreparedStatement ps = ctn.prepareStatement(sql);
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, phone);
	ps.setString(4, address);
	i = ps.executeUpdate();
	
}
catch(Exception e){
	e.printStackTrace();
}
if(i>0)
{
	response.sendRedirect("SQL_data_display.jsp?msg=add-done");
}
else{
	response.sendRedirect("SQL_data_display.jsp?msg=not-add");
}
%>
</body>
</html>