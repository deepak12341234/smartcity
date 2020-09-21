<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String infoId=request.getParameter("infoId");
String categoryName=request.getParameter("categoryName");
String placeName=request.getParameter("placeName");
String address=request.getParameter("address");
String landmark=request.getParameter("landmark");
String contactno=request.getParameter("contactno");

Connection con=ConnectionProvider.getCon();
PreparedStatement pst=con.prepareStatement("update CATEGORY_INFO set placeName=?,address=?,landmark=?,contactno=? where infoId=?");
pst.setString(1,placeName);
pst.setString(2,address);
pst.setString(3,landmark);
pst.setString(4,contactno);
pst.setInt(5,Integer.parseInt(infoId));
pst.executeUpdate();
con.close();
response.sendRedirect("verify_information.jsp?msg=updated");
%>
</body>
</html>