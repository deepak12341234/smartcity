<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>

<%@ include file="header.jsp" %>

<div style="position:relative;left:1000px;"><a href="logout.jsp" style="font-size:20px">Logout</a></div>
<a href="welcome_user.jsp">Back</a>


<% 
String msg=request.getParameter("msg");
if(msg!=null)
{
out.println("<center>Information updated</center>");	
}
%>

<table border="0"align="center"bgcolor="cyan">
<th width="120px">CategoryName</th><th width="120px">PlaceName</th><th width="120px">Address</th><th width="120px">Contact</th><th width="120px">Landmark</th><th width="120px">Action</th>
<% 
String postedBy=(String)session.getAttribute("username");
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from CATEGORY_INFO where allow='false' and postedBy='"+postedBy+"'");
while(rs.next())
{
%>
<tr>
<td align="center"><%=rs.getString(1)%></td><td align="center"><%=rs.getString(2)%></td><td align="center"><%=rs.getString(3)%></td><td align="center"><%=rs.getString(4)%></td><td align="center"><%=rs.getString(7)%></td>
<td align="center">
<a href="delete_info_user.jsp?infoId=<%=rs.getInt(6)%>">Delete</a>
<a href="edit_info_user_form.jsp?infoId=<%=rs.getInt(6)%>">Edit</a>

</td>
</tr>
<%
}
con.close();
%>
</table>
<%@include file="footer.jsp"%>