package project;


import java.io.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet 
{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String path=this.getServletContext().getRealPath("/WEB-INF/upload");
		File f=new File(path);
		if(!f.exists())
		{
			f.mkdir();
		}
	MultipartRequest mpr=new MultipartRequest(request,path);
	PrintWriter out=response.getWriter();
	response.sendRedirect("upload_photos.jsp?msg=success");
	out.close();
	}

}








