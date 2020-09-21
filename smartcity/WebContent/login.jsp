<%@ include file="header.jsp" %>

<table bgcolor="cyan" align="center" cellpadding="5" cellspacing="20">
       
	          
			      <form action="login_user.jsp" method="post">
	            <tr>
            	   <td>
				   <b>Username:</b><input type="text" required="required" name="username" ><br>
				  </td>
	         </tr>
				  
        <tr>          
		          <td><b>Password:</b><input type="password" required="required" name="password" ><br>
	              </td>
		</tr>		  
	     <tr>
				 <td> <input type="submit" value="Login"></td><td><a href="forgot.jsp">Forgot password?</a></td>
	     </tr>
           </form>
			  
	

</table>


<%@ include file="footer.jsp" %>