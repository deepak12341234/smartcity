<%@ page language="java" import="java.sql.*,project.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="header.jsp" %>
<%
String category = request.getParameter("category");
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs =st.executeQuery("select max(CATEGORYID) from CATEGORY");
int id=1;
if(rs.next())
{
id=rs.getInt(1);
id++;
}

PreparedStatement pst=con.prepareStatement("insert into CATEGORY values(?,?)");
pst.setInt(1,id);
pst.setString(2,category);
pst.executeUpdate();
con.close();
response.sendRedirect("add_category.jsp?msg=success");
}
catch(Exception e)
{

response.sendRedirect("add_category.jsp?msg=fail");
}

%>
<%@ include file="footer.jsp"%>