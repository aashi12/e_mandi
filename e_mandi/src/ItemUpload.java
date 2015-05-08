
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest; 

import java.sql.*;

public class ItemUpload extends HttpServlet 
{
	
   Connection c;
   Statement st;
   String s1,s2,s3,s4,s5;
   PreparedStatement ps;
   PrintWriter out;
   void dbv()
   {
	   
	   try {
		   Class.forName("oracle.jdbc.driver.OracleDriver");
		     c= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1111");
		        ps  = c.prepareStatement("insert into ITEMS values(?,?,?,?,?)");
		        
					ps.setString(1, s1);
					ps.setString(2, s2);
					ps.setString(3, s3);
					ps.setString(4, s4);
					ps.setString(5, s5);
					ps.executeUpdate();
				c.close();
	      } catch (Exception e) {
		// TODO Auto-generated catch block
		            out.println(e);
	      }
	   
	   
   }
   
   void dbf()
   {
	   
	   try {
		   Class.forName("oracle.jdbc.driver.OracleDriver");
		     c= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ani1");
		        ps  = c.prepareStatement("insert into FRUITS values(?,?,?,?,?)");
		        
					ps.setString(1, s1);
					ps.setString(2, s2);
					ps.setString(3, s3);
					ps.setString(4, s4);
					ps.setString(5, s5);
					ps.executeUpdate();
				c.close();
	      } catch (Exception e) {
		// TODO Auto-generated catch block
		            out.println(e);
	      }
	   
	   
   }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");  
		 out = response.getWriter();  
                           
                           
                           
                           
                           
		
		new File("C://veg").mkdir();
		//new File("C://fruit").mkdir();
		MultipartRequest m=new MultipartRequest(request,"C:/veg"); 
		s1 =m.getParameter("id");
        s2 =m.getParameter("iname");
        s3 =m.getParameter("rate");
        s4 =m.getParameter("cat");
        s5 = m.getFilesystemName("itemphoto");
		
        if(s4.equalsIgnoreCase("Vegetable"))
        {
        	
        	dbv();  	
        }
        else if(s4.equalsIgnoreCase("Fruit"))
        {
        	dbf();
        	
        }
        
        
		                   
		
		
		
		out.println("<a href='itemReg.jsp'>Upload Another Items</a>");
		out.println("<br/><br/>");
		out.println(s1+s2+s3+s4+s5);
		out.print("successfully uploaded");  
	}

}
