import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ValidateAdmin extends HttpServlet 
{
String pd,un;
public void doPost(HttpServletRequest request,HttpServletResponse 
 response) 
      throws ServletException,IOException
{
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  try{
    String admin=request.getParameter("admin");
    String password=request.getParameter("Apass");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1111");
 Statement s=con.createStatement();
ResultSet rs=s.executeQuery("select name,password from admin where name='"+admin+"' ");
  while(rs.next())
  {
	  un=rs.getString("name");   
	  pd=rs.getString("password");
	  
  }

   if(password.equals(pd))
    {
  HttpSession session=request.getSession(true);
  session.setAttribute("admin1",un);

RequestDispatcher view =request.getRequestDispatcher("itemReg.jsp");
  view.forward(request, response);
                
   }
  else
    {
 RequestDispatcher view =request.getRequestDispatcher("admin_error.jsp");
    view.include(request, response);
         }
      }
     catch(Exception e){out.println(e);}
     finally{
     out.close();
 }
 }
}