package project;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet 
{
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		PrintWriter out=response.getWriter();
		String path=this.getServletContext().getRealPath("/WEB-INF/upload");
		File f=new File(path);
		String files[]=f.list();
		RequestDispatcher rd=request.getRequestDispatcher("header.html");
		rd.include(request,response);
		out.println("<html><body bgcolor=yellow><div style=position:absolute;top:20%;left:25%;width:40%;height:50%;background-color:aqua>");
		
		HttpSession ss=request.getSession();
		String userType=(String)ss.getAttribute("username");
		if(userType.equalsIgnoreCase("admin"))
		out.println("<a href=welcome_admin.jsp>Back</a>");
		else
			out.println("<a href=welcome_user.jsp>Back</a>");	
			
		out.println("<html><body bgcolor=yellow><div style=position:relative;left:40%;>");
		for(int i=0;i<files.length;i++)
		{
			String name=files[i];
			String imagePath=path+"/"+files[i];
			imagePath=imagePath.replace("\\", "/");
			//out.println("<img src="+imagePath+" width=100px height=50px/>");
			out.println("<br><a href='DownloadServlet?p1="+imagePath+"'>Download "+name+"</a>");
		}
		out.println("</div></div></body></html>");
		out.close();
	}

}











