import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class checkValidation extends HttpServlet 
{
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		res.setContentType("text/html");
		
		HttpSession session=req.getSession();
		if(session != null)
		{
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.forward(req, res);            
		   }
		  else
		    {
		 RequestDispatcher view =req.getRequestDispatcher("index.jsp");
		    view.include(req, res);
		    }
	}

}
