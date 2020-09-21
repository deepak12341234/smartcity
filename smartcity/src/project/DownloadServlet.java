package project;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet 
{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String imagePath=request.getParameter("p1");
		response.setContentType("application/octet-stream");
		String imageName=imagePath.substring(imagePath.lastIndexOf('/')+1);
		response.setHeader("content-disposition","attachment;fileName="+imageName);
		FileInputStream fin=new FileInputStream(imagePath);
		ServletOutputStream out=response.getOutputStream();
		while(true)
		{
			int i=fin.read();
			if(i==-1)
				break;
			out.write(i);
		}
		out.close();
		fin.close();
	}

}









