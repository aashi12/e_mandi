

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddToCart extends HttpServlet {
	String sname,sa,r;
	PreparedStatement s;
	int ri,opi;
	static Integer suz;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		  HttpSession ses=request.getSession(false);
		 
		  if(ses==null)
		  {
			  
			  response.sendRedirect("login.jsp");
		  }
		  else
		  {
	 Integer count =(Integer)ses.getAttribute("count");
	 
	 if(count==null)
	 {
		 count=new Integer(0);
		 
	 }
	 
	    count = (Integer)count.intValue()+1;
		ses.setAttribute("count", count);
		out.print(count.intValue());
		
		
		
		
		
		try{
		    String email=request.getParameter("email");
		    String password=request.getParameter("pass");
		    Class.forName("oracle.jdbc.driver.OracleDriver");
		    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1111");
		  s=con.prepareStatement("select * from items where name=?");
		
		
		}
		catch(Exception e)
		{
			out.print(e);
		}
		for(int i=1;i<10000000;i++)
		{
			 sa=request.getParameter(String.valueOf(i));
			 String op1=request.getParameter("op");
			   opi=Integer.parseInt(op1);
			 if(sa!=null)
			 {
				 try
				{
					 s.setString(1, sa); 
					 ResultSet  rs=s.executeQuery();
					   while(rs.next())
					   {
						   
						      r =rs.getString(3);
						        ri =Integer.parseInt(r);
					   }
					
				} 
			 catch (SQLException e)
				{
					e.printStackTrace();
				}
				 out.println(sa+" "+r); 
				  int z= ri*opi;
				  
				 
				  Integer suz  =(Integer)ses.getAttribute("amount");
				   if(suz==null)
				   {
					   suz=new Integer(0);
				   }
				
					  suz=(Integer)suz.intValue()+z;

				       
				       ses.setAttribute("amount", suz);
				 out.println(" Amount :"+suz);  
		 }
			
      }
		response.sendRedirect("vegitable.jsp");
				 
		out.print("I m Servlet");
		  }
	}
	
}
