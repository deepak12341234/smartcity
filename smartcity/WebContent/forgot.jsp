<%@page import="project.ConnectionProvider,java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forgot password</title>
<%@ include file="header.jsp" %>

<form action="forgot.jsp">
<table align="center" cellpadding="10px" cellspacing="10px" bgcolor="aqua">
<tr><td><%
String username = request.getParameter("username");
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs =st.executeQuery("select * from USER_INFO where username ='"+username+"'");

if(rs.next())
{
	String pass= rs.getString(2);
	out.println("<html><body><div><h3> your password is :");
	out.println(pass);
	out.println("</h3><br><br><br>");
	
	out.println("</div></body></html>");
	
}

}
catch(Exception e)
{
	
}
%></td></tr>
<tr><td>Enter user Name</td><td><input type ="text" placeholder="username" name="username"  ></td></tr>

<tr><td><input type="submit" value= "request"></td></tr>
</table>
</form>



<%@include file="footer.jsp" %>