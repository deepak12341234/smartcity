<%@page import="project.ConnectionProvider,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String username=request.getParameter("username");
String password=request.getParameter("password");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
try
{
Connection con=ConnectionProvider.getCon();
PreparedStatement pst=con.prepareStatement("insert into USER_INFO values(?,?,?,?)");
pst.setString(1,username);
pst.setString(2,password);
pst.setString(3,mobile);
pst.setString(4,email);

pst.executeUpdate();
con.close();
response.sendRedirect("index.jsp?msg=success");
}
catch(Exception e)
{
response.sendRedirect("index.jsp?msg=fail");
}

%>

</body>
</html>