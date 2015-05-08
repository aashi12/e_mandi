package com.my;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest; 
import java.sql.*;



/**
 * Servlet implementation class MyServlet
 */
public class MyServlet extends HttpServlet {
	
   Connection c;
   Statement st;
   String s1,s2,s3,s4;
   PreparedStatement ps;
   void db()
   {
	   
	   try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		c=DriverManager.getConnection("oracle:jdbc:thin:@localhost:1521:xe","system","1111");
		        ps  = c.prepareStatement("insert into mandi values(?,?,?,?)");
		        
					ps.setString(1, s1);
					ps.setString(2, s2);
					ps.setString(3, s3);
					ps.setString(4, s4);
					ps.executeUpdate();
				
	      } catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	      }
	   
	   
   }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
                           
                           
                           
                           
                           
		
		new File("C:\\Directory1").mkdir();
		MultipartRequest m=new MultipartRequest(request,"C:\\Directory1"); 
		s1 =m.getParameter("vname");
        s2 =m.getParameter("vid");
        s3 =m.getParameter("vcost");
        s4 =m.getParameter("cata");
        
		          //  db();         
		
		
		/*File f=new File("c:\\Directory1");
		File []list     = f.listFiles();
		for(int i=0;i<list.length;i++)
		{
			
			out.println(list[i].getName());
			
			
		}
		*/
		
		out.println("<a href='show.jsp'>Go Shop</a>");
		out.println(s1+s2+s3+s4);
		out.print("successfully uploaded");  
	}

}
