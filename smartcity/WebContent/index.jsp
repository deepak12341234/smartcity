<%@page import="project.ConnectionProvider,java.sql.*"%>
<%@ include file="header.jsp" %>
<%@ include file="create_table.jsp" %>

		 <div id="content">
		                   
		                   <div id="left-content">
						                  <marquee direction="up"><h3 style="color:red">NEWS</h3><br>UN selects Noida, Greater Noida for Global Sustainable Cities 2025 initiative<br>Notifications<br>Class 6 boy flees home, calls parents to 'reach in 5 minutes', dad hears 'Rs 5 lakh ransom'<br>Notifigreater noida yellow pages<br>Notifications<br>greater noida yellgreater noida yellow pages<br>Notifications<br>Three storey building collapses in Greater Noida, no casualties reported<br></marquee>
						   </div>
						   <div id="main-content">
						               <font color="blue" face="arial"size="30">Greater Noida </font><h4>is a census town with a population of 100,000 in the Gautam Budh Nagar district of the northern Indian state of Uttar Pradesh.[2] It comes under the purview of the National Capital Region (NCR) of India. Greater Noida is 30 km and half an hour from New Delhi.[3]

										Rama Raman is its present Chairman and Chief Executive Officer.[4] Metro connectivity from New Delhi to Greater Noida is on top priority as per statement of Rama Raman.[5] The work on the metro line was subsequently initiated in August, 2015.
						 </h4>  </div>
						   <div id="right-content">
						         <form action="register_user.jsp" method="post">
						                  <font color="blue"face="arial"><h2><b><center>Create Account</center></b></h2></font>
<% 
String msg=request.getParameter("msg");
if(msg==null)
{}
else if(msg.equalsIgnoreCase("success"))
{
	
	out.println("<font color=green>Regiatration successful</font>");
}
else if(msg.equalsIgnoreCase("fail"))
{
	out.println("<font color=red>Username Already Exist!</font>");
}

else if(msg.equals("invalid"))
{
	out.println("<font color=red>Invalid Username/Password</font>");
}
%><br>
						                 <input type="text" required="required" name="username" placeholder="username"><br><br>
                                         <input type="password" required="required" name="password" placeholder="password"><br><br>
                                         <input type="number" required="required" name="mobile" placeholder="mobile"><br><br>
                                         <input type="email" required="required" name="email"  placeholder="email"><br><br>
										 <input type="submit" value="register">
									</form>	 
						   </div>
						    <marquee>
		                 <img src="images/g4.png"/>
						<img src="images/g5.png"/>
						<img src="images/g6.png"/>
						<img src="images/g7.png"/>
		                 </marquee>
						 
						  
		 </div>
		 
<%@ include file="footer.jsp" %>		 
		 
		     