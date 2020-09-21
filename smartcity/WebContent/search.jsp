<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>



<%@ include file="header.jsp"%>

<a href="index.jsp">Back</a>
<table bgcolor="cyan" align="center">
<tr>
<td>
<table>
<th width="120px">CategoryName</th><th width="120px">PlaceName</th><th width="120px">Address</th><th width="120px">Contact</th><th width="120px">Landmark</th>
<% 
String categoryName=request.getParameter("categoryName");

Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from CATEGORY_INFO where categoryName='"+categoryName+"' and allow='true'");
while(rs.next())
{
%>
<tr>
<td align="center"><%=rs.getString(1)%></td><td align="center"><%=rs.getString(2)%></td><td align="center"><%=rs.getString(3)%></td><td align="center"><%=rs.getString(4)%></td><td align="center"><%=rs.getString(7)%></td>
</tr>
<%
}
con.close();
%>
</table>
</td>
</tr>
</table>
<%@include file="footer.jsp"%>