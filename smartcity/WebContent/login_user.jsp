<%@page import="project.ConnectionProvider,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>

<%

String username=request.getParameter("username");
String password=request.getParameter("password");

if(username.equalsIgnoreCase("admin")&&password.equals("admin"))
{
	session.setAttribute("username","admin");
	response.sendRedirect("welcome_admin.jsp");	
}
else
{
try
{
Connection con=ConnectionProvider.getCon();
PreparedStatement pst=con.prepareStatement("select * from USER_INFO where username=? and password=?");
pst.setString(1,username);
pst.setString(2,password);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	session.setAttribute("username",username);
	response.sendRedirect("welcome_user.jsp");
}
else
{
	response.sendRedirect("index.jsp?msg=invalid");	
}
con.close();
}
catch(Exception e)
{
 	System.out.println(e);
}
}
%>
<%@ include file="footer.jsp"%>