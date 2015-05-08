
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class RegisterUser extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response) 

throws ServletException,IOException
{
response.setContentType("text/html");
PrintWriter out=response.getWriter();
String email=request.getParameter("email");
String uname=request.getParameter("uname");
String password=request.getParameter("pass");
String mobile=request.getParameter("mobile");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1111");
PreparedStatement stmt=con.prepareStatement("insert into members values(?,?,?,?)");
stmt.setString(1, email);
stmt.setString(2, uname);
stmt.setString(3, password);
stmt.setString(4, mobile);
int i=stmt.executeUpdate();
out.print(email+" .. "+uname+" ,, "+password+" // "+ mobile);
out.println("<b>You are successfully Registered</b>");
out.print("<b><a href='index.jsp'>Back to Login Page</b>");
con.close();
}
catch(Exception e)
{
out.println("<b>Registration failed</b>");
out.println("<b>Error:</b>" +e);
}
}
}