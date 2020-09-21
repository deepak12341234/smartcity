<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<body bgcolor="yellow">

<%@ include file="header.jsp" %>
<div style="position:relative;left:1000px;"><a href="logout.jsp" style="font-size:20px">Logout</a></div>


<a href="welcome_admin.jsp">Back</a>


<form action="add_info_db.jsp" method="post">
<table bgcolor="aqua" align="center" cellpadding="10px" cellspacing="10px">
<tr><td><% 
String msg=request.getParameter("msg");
if(msg==null)
{}
else if(msg.equalsIgnoreCase("success"))
{
	
	out.println("<font color=green>Information Added and send for approval</font>");
}
else if(msg.equalsIgnoreCase("fail"))
{
	out.println("<font color=red>Information  not Added</font>");
}
%></td></tr>

<tr><td><select name="categoryName">
<option value="other">---Select a category---</option>
<% 
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from CATEGORY");
while(rs.next())
{
	String n=rs.getString(2).toUpperCase();
%>
<option value="<%=n%>"><%=n%></option>
<%	
}
con.close();
%></select></td></tr>

<tr><td><input type="text" required="required" name="placeName" placeholder="placeName"></td></tr>
<tr><td><input type="text" required="required" name="address" placeholder="Address"></td></tr>
<tr><td><input type="text" required="required" name="contactno" placeholder="Contact  No"></td></tr>
<tr><td><input type="text" required="required" name="landmark"  placeholder="Landmark"></td></tr>
<tr><td><input type="submit" value="Add"></td></tr>
</table>
</form>
</div>
</div>
<%@ include file="footer.jsp" %>