<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>

<%@ include file="header.jsp" %>

<a href="welcome_admin.jsp">Back</a>

<form action="edit_info_db.jsp" method="post">
<table align="center" bgcolor="aqua" cellpadding="10px" cellspacing="10px">

<tr><td><% 
String infoId=request.getParameter("infoId"); 
Connection con=ConnectionProvider.getCon();
PreparedStatement st=con.prepareStatement("select * from CATEGORY_INFO where infoId=?");
st.setInt(1,Integer.parseInt(infoId));
ResultSet rs=st.executeQuery();
if(rs.next())
{
%>
<tr><td>Category Name:</td><td><input type="text"  disabled="disabled" name="categoryName" value="<%=rs.getString(1)%>"></td></tr>
<tr><td>Place Name:</td><td><input type="text"  name="placeName" value="<%=rs.getString(2)%>" autofocus></td></tr>
<tr><td>Address:</td><td><input type="text"  name="address" value="<%=rs.getString(3)%>"></td></tr>
<tr><td>Contact No:</td><td><input type="text"  name="contactno" value="<%=rs.getString(4)%>"></td></tr>
<tr><td>Landmark:</td><td><input type="text"  name="landmark" value="<%=rs.getString(7)%>"></td></tr>
<tr><td><input type="hidden"  name="infoId" value="<%=rs.getString(6)%>"></td></tr>
<tr><td><input type="submit" value="Update"></td></tr>
</table>
</form>


<%

}
con.close();
%>
<br><br>
<%@include file="footer.jsp"%>