import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

class Demo extends AddToCart
{
private static final long serialVersionUID = 1L;

static void des()
   {	   
	   suz=0;
   }
}

@SuppressWarnings("serial")
public class Logout extends HttpServlet 
{
protected void service(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
 response.setContentType("text/html");
 PrintWriter out = response.getWriter();
 try {
	Demo.des(); 
 HttpSession session=request.getSession();
 session.invalidate();

 out.println("<div style='float:left;font-size:20px;'>"+"<a href='index.jsp'>click to login again</a></div>");
 out.println("<h1 align='center'>"+"Logout Sucessfully..."+"</h1>");
 }finally { 
	 
 out.close();
 }
 }
}