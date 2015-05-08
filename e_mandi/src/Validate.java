import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Validate extends HttpServlet 
{
String pd,un;
public void doPost(HttpServletRequest request,HttpServletResponse 
 response) 
      throws ServletException,IOException
{
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  try{
    String email=request.getParameter("email");
    String password=request.getParameter("pass");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1111");
 Statement s=con.createStatement();
ResultSet rs=s.executeQuery("select user_name,pass from members where email_id='"+email+"' ");
  while(rs.next())
  {
	  un=rs.getString("user_name");   
	  pd=rs.getString("pass");
	  
  }

   if(password.equals(pd))
    {
  HttpSession session=request.getSession(true);
  session.setAttribute("user",un);

RequestDispatcher view =request.getRequestDispatcher("SuccessLogin.jsp");
  view.forward(request, response);
                
   }
  else
    {
 RequestDispatcher view =request.getRequestDispatcher("Error.jsp");
    view.include(request, response);
         }
      }
     catch(Exception e){out.println(e);}
     finally{
     out.close();
 }
 }
}