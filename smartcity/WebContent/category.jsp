<%@page import="project.ConnectionProvider,java.sql.*"%>

<%@include file="header.jsp"%>

<table border="0"align="center" bgcolor="cyan"cellpadding="5"cellspacing="5"height="200"width="200">
<tr>
<td>
<form action="search.jsp">
<select name="categoryName">
<option>---Select a category---</option>
<% 
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from CATEGORY	");
while(rs.next())
{
%>
<option><%=rs.getString(2).toUpperCase()%></option>
<%	
}
con.close();
%></select></td>
</tr>
<tr>
<td>
<input type="submit" value="search">
</form>
</td>
</tr>
</table>


<%@ include file="footer.jsp"%>