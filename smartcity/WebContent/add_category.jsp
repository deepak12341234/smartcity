<%@ page language="java" import="java.sql.*,project.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="header.jsp" %>
<div style="position:relative;left:1000px;"><a href="logout.jsp" style="font-size:20px">Logout</a></div>

<a href="welcome_admin.jsp">Back</a>

<form action="add_category_db.jsp" method="post">


<table bgcolor="aqua" align="center" cellpadding="10px" cellspacing="10px">
<tr><td></td><td>
<% 
String msg=request.getParameter("msg");
if(msg==null)
{}
else if(msg.equalsIgnoreCase("success"))
{
	
	out.println("<font color=green>Category Added</font>");
}
else if(msg.equalsIgnoreCase("fail"))
{
	out.println("<font color=red>Category Not Added</font>");
}
%></td></tr>
<tr><td>Enter Category:</td><td><input type ="text" placeholder="Category" name="category"></td></tr>
<tr><td><input type="submit" value= "Add Category"></td></tr>
</table>
</form>
<%@ include file="footer.jsp"%>
