<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="header.jsp" %>
<div style="position:relative;left:1000px;"><a href="logout.jsp" style="font-size:20px">Logout</a></div>
<a href="welcome_admin.jsp">Back</a>


<form action="UploadServlet2" method="post" enctype="multipart/form-data">
<table align="center" bgcolor="aqua" cellpadding="10px" cellspacing="10px">
<tr><td></td><td><font color="green"><% 
String msg=request.getParameter("msg");
if(msg!=null)
{
out.println("<center>File uploaded</center>");	
}
%></font></td></tr>
<tr><td>Select Photo:</td><td><input type="file" name="file"></td></tr>
<tr><td><input type="submit" value="upload"></td></tr>
</table>
</form>

<%@ include file="footer.jsp"%>