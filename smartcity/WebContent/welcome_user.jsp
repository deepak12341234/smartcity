<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ include file="header.jsp" %>
<% 
String username=(String)session.getAttribute("username");
%>

<font color="red"size="3">Welcome:<%=username%><br><br>

<table align="center" border="0"bgcolor="cyan"width="300"height="200">
<tr>
      <th><center><font color="blue"face="arial"size="4"><a href="add_information_user.jsp">Add Information</a></font></center></th>
</tr>
<tr>
<th><center><font color="blue"face="arial"size="4"><a href="edit_info_user.jsp">Edit Information</a></font></center></th>
</tr>
<tr>
        <th><center><font color="blue"face="arial"size="4"><a href="ViewServlet"></a></font></center></th>
</tr>
</table>
<%@ include file="footer.jsp" %>
