/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.50
 * Generated at: 2014-04-18 12:45:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Online e-Mandi</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"style.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"gray\">\r\n");
      out.write("<div id=\"container\">\r\n");
      out.write("<div id=\"main\">\r\n");
      out.write("<table border=\"0\" width=\"960\" height=\"240\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td height=\"25\" bgcolor=\"black\" class=\"order\"><p> &nbsp;&nbsp;&nbsp;&nbsp;To Order Call @ 88 88 80 80 80 (Open 9 AM - 8 PM)</p>\r\n");
      out.write("<!--  <p align=\"right\" class=\"admin\"><b><a href=\"admin.jsp\">Admin Login</a> &nbsp; &nbsp; &nbsp; &nbsp;</b></p> -->\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td class=\"bann\">\r\n");
      out.write("<!--  banner -->\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table border=\"0\" width=\"960\" height=\"40\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("<tr bgcolor=\"green\">\r\n");
      out.write("<td align=\"center\" class=\"tab\"><a href=\"index.jsp\">HOME</a></td>\r\n");
      out.write("<td align=\"center\" class=\"tab\">|</td>\r\n");
      out.write("<td align=\"center\" class=\"tab\"><a href=\"howToOrder.jsp\">HOW TO ORDER</a></td>\r\n");
      out.write("<td align=\"center\" class=\"tab\">|</td>\r\n");
      out.write("<td align=\"center\" class=\"tab\"><a href=\"ourProducts.jsp\">OUR PRODUCTS</a></td>\r\n");
      out.write("<td align=\"center\" class=\"tab\">|</td>\r\n");
      out.write("<td align=\"center\" class=\"tab\"><a href=\"deliveryInfo.jsp\">DELIVERY INFO</a></td>\r\n");
      out.write("<td align=\"center\" class=\"tab\">|</td>\r\n");
      out.write("<td align=\"center\" class=\"tab\"><a href=\"contactUs.jsp\">CONTACT US</a></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<br/>\r\n");
      out.write("<table border=\"0\" width=\"960\" height=\"auto\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"200\" valign=\"top\">\r\n");
      out.write("<table class=\"basket\" width=\"200\" height=\"150\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fefdfd\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" valign=\"top\">\r\n");
      out.write("<p><img src=\"images/basket.png\" width=\"180\"/></p>\r\n");
      out.write("<p class=\"bask\"><b>Your Cart:</b></p>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("&nbsp;\r\n");
      out.write("<table class=\"basket\" width=\"200\" height=\"150\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fefdfd\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" valign=\"top\">\r\n");
      out.write("<p><img src=\"images/ccav.gif\" width=\"180\"/></p>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"560\" align=\"center\" valign=\"top\">\r\n");
      out.write("<table class=\"basket\" border=\"0\" width=\"500\" height=\"150\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fefdfd\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" valign=\"top\">\r\n");
      out.write("<h2>Register User</h2>\r\n");
      out.write("\r\n");
      out.write("<form action=\"RegisterUser\"  method=\"post\">\r\n");
      out.write("<table border=\"0\" width=\"400\" cellspacing=\"10\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Email Id:</td>\r\n");
      out.write("<td><input type=\"text\" name=\"email\" /></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>User Name:</td>\r\n");
      out.write("<td><input type=\"text\" name=\"uname\" /></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Password:</td>\r\n");
      out.write("<td><input type=\"password\" name=\"pass\" /></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Mobile:</td>\r\n");
      out.write("<td><input type=\"text\" name=\"mobile\" /></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td></td>\r\n");
      out.write("<td><input type=\"submit\" value=\"Register\" /></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"300\" valign=\"top\">\r\n");
      out.write("<table border=\"0\" class=\"basket\" width=\"200\" height=\"150\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fefdfd\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\">\r\n");
      out.write("<p><img src=\"images/login.png\" /></p>\r\n");
      out.write("<table width=\"240\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td>User Name</td>\r\n");
      out.write("<td><input type=\"text\" name=\"uname\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Password</td>\r\n");
      out.write("<td><input type=\"password\" name=\"pass\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td></td>\r\n");
      out.write("<td><input type=\"submit\" value=\"Login\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("&nbsp;\r\n");
      out.write("<table border=\"0\" class=\"basket\" width=\"240\" height=\"150\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fefdfd\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\">\r\n");
      out.write("<p><img src=\"images/free.png\" width=\"150\" height=\"150\" /></p>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("&nbsp;\r\n");
      out.write("<table border=\"0\" width=\"960\" height=\"70\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td height=\"4\" bgcolor=\"green\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td height=\"65\" bgcolor=\"black\" align=\"center\" class=\"foot\">\r\n");
      out.write("<p>Copyright &copy; 2014 All Rights Reserved @ e-Mandi</p>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
