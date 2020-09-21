<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ include file="header.jsp"%>
<% 
String placeName=request.getParameter("placeName");
String address=request.getParameter("address");
String contactno=request.getParameter("contactno");
String landmark=request.getParameter("landmark");
String categoryName=request.getParameter("categoryName");

try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs =st.executeQuery("select max(infoId) from CATEGORY_INFO");
int id=1;
if(rs.next())
{
id=rs.getInt(1);
id++;
}

PreparedStatement pst=con.prepareStatement("insert into CATEGORY_INFO values(?,?,?,?,?,?,?,?)");

pst.setString(1,categoryName);
pst.setString(2,placeName);
pst.setString(3,address);
pst.setString(4,contactno);
pst.setString(5,"false");
pst.setInt(6,id);
pst.setString(7,landmark);
String postedBy=(String)session.getAttribute("username");
pst.setString(8,postedBy);
pst.executeUpdate();
con.close();
response.sendRedirect("add_information.jsp?msg=success");
}
catch(Exception e)
{
response.sendRedirect("add_information.jsp?msg=fail");
}

%>
<%@ include file="footer.jsp"%>
