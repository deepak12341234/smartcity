<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>


<%@ include file="header.jsp" %>
<div style="position:relative;left:1000px;"><a href="logout.jsp" style="font-size:20px">Logout</a></div>
<table bgcolor="cyan"align="center" border="0">

<a href="welcome_user.jsp">Back</a>


<form action="edit_info_user_db.jsp" method="post">
<% 
String infoId=request.getParameter("infoId"); 
Connection con=ConnectionProvider.getCon();
PreparedStatement st=con.prepareStatement("select * from CATEGORY_INFO where infoId=?");
st.setInt(1,Integer.parseInt(infoId));
ResultSet rs=st.executeQuery();
if(rs.next())
{
%>

<tr>
            <td><b>Category Name:</b></td><td><input type="text"  disabled="disabled" name="categoryName" value="<%=rs.getString(1)%>"></td>
</tr>
<tr>
            <td><b>Place Name:</b></td><td><input type="text"  name="placeName" value="<%=rs.getString(2)%>" autofocus></td>
</tr>
<tr>
		<td><b>Address:</b></td><td><input type="text"  name="address" value="<%=rs.getString(3)%>"></td>
</tr>

<tr>
<td><b>Contact No:</b></td><td><input type="text"  name="contactno" value="<%=rs.getString(4)%>"></td>
</tr>
<tr>
<td><b>Landmark:</b></td><td><input type="text"  name="landmark" value="<%=rs.getString(7)%>"></td>
</tr>
<tr>
<td></td><td><input type="hidden"  name="infoId" value="<%=rs.getString(6)%>"><br>
<input type="submit" value="Update"></td>
</tr>
</form>

</table>







<%

}
con.close();
%>
<br><br>
<%@ include file="footer.jsp"%>