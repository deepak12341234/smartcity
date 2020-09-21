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
Connection con=ConnectionProvider.getCon();
PreparedStatement pst=con.prepareStatement("update CATEGORY_INFO set allow='true' where infoId=?");
pst.setInt(1,Integer.parseInt(infoId));
pst.executeUpdate();
con.close();
response.sendRedirect("verify_information.jsp");
%>
</body>
</html>