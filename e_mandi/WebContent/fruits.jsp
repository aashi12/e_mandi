<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online e-Mandi</title>
<link rel="stylesheet" href="style.css" />
</head>
<body bgcolor="gray">

<%! 
Connection conn;
    Statement st;
	ResultSet rs;
	String o_rate;
	String img_o;
	String sname;
	int i=1;
%>
<%
    
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1111");
        
        st=conn.createStatement();
        String onion="select * from fruits";
        rs=st.executeQuery(onion);
        
    }

    catch(Exception e)
    {
       System.out.println("Exception : " + e.getMessage() + "");
    }


%>


<div id="container">
<div id="main">
<table border="0" width="960" height="260" cellspacing="0" cellpadding="0">
<tr>
<td height="30" bgcolor="black" class="order">
<table border="0" width="960" height="30" cellspacing="0" cellpadding="0">
<tr>
<td align="center"><p>To Order Call @ 88 88 80 80 80 (Open 9 AM - 8 PM)</p></td>
<td align="center">
<!-- user login details -->
<%  
String usd =(String)session.getAttribute("user");
out.print("<h2>Welcome "+usd); %>&nbsp;
<a href="Logout1"><input type="button" value="Logout"></a> </td>
<td align="center"><h2 class="admin"><a href="#">Admin Login</a></h2></td>
</tr></table>
</td>
</tr>
<tr>
<td class="bann">
<!--  <img class="logo" src="images/logo.gif" width="220" height="100"/>
<img class="free" src="images/free.png" width="150" height="150"/>    -->
</td>
</tr>
</table>
<table border="0" width="960" height="40" cellspacing="0" cellpadding="0">
<tr bgcolor="green">
<td align="center" class="tab"><a href="SuccessLogin.jsp">HOME</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="#">HOW TO ORDER</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="#">OUR PRODUCTS</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="#">DELIVERY INFO</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="#">CONTACT US</a></td>
</tr>
</table>
<br/>
<table border="0" width="960" height="auto" cellspacing="0" cellpadding="0">
<tr>
<td width="200" valign="top">
<table class="basket" width="200" height="auto" cellspacing="0" cellpadding="0" bgcolor="#fefdfd">
<tr>
<td align="center" valign="top">
<p><img src="images/basket.png" width="180"/></p>
<h3 class="bask"><b>Your Cart:</b></h3>
<strong><p>
Item Selected = <% Integer a=(Integer)session.getAttribute("count");
if(a==null)
	 {
		 a=new Integer(0);
		 
	 }

%> <%= a.intValue() %></p>
<p>Total Order Rs. = <%   Integer amu=(Integer)session.getAttribute("amount"); 
if(amu==null)
	 {
		 amu=new Integer(0);
		 
	 }
%>
<%= amu %>
</p></strong>
<p><a href="checkOut.jsp" ><input type="button" value="Check Out"></a></p>
</td>
</tr>
</table>
&nbsp;
<table class="basket" width="200" height="150" cellspacing="0" cellpadding="0" bgcolor="#fefdfd">
<tr>
<td align="center" valign="top">
<p><img src="images/ccav.gif" width="180"/></p>
</td>
</tr>
</table>
</td>
<td width="560" align="center" valign="top">
<table class="basket" border="0" width="500" height="150" cellspacing="0" cellpadding="0" bgcolor="#fefdfd">
<tr>
<td align="center" valign="top">
<p><img class="bask" src="images/cate.png" width="400" height="31"/></p>
<table border="0"  width="400" cellspacing="10">
<tr>
<%
while(rs.next())
        {
       		 o_rate=rs.getString(3);
       		 img_o=rs.getString(5);
       		 sname=rs.getString(2);
        
 %>
<td><img src="C:/veg/<%= img_o %>" /><center><b><%= sname %></b></center> <hr/></td>
<td align="center">
<p>Rs 
<%= o_rate %>

Per Kg</p>
<b>Quantity</b>&nbsp;
<form action="AddToCartFruits">
<select name="op">
<option value="1">1 Kg</option>
<option value="2">2 Kg</option>
<option value="3">3 Kg</option>
<option value="4">4 Kg</option>
<option value="5">5 Kg</option>
</select>

<input type="hidden" name="<%=i++%>" value="<%=sname%>">
<p><input type="submit" value="Add To Cart" /></p><hr/>
</form>
</td>
</tr>

<!--  
<td align="center">
<p>Rs 
<%= o_rate %>

Per Kg</p>
<b>Quantity</b>&nbsp;
<select>
<option>1 Kg</option>
<option>2 Kg</option>
<option>3 Kg</option>
<option>4 Kg</option>
<option>5 Kg</option>
</select>
<p><input type="button" value="Add To Cart" /></p><hr/>
</td>
</tr>
-->
<%
}
 %>
<!--  <p></p>
<b>Quantity</b>&nbsp;
<select>
<option>1 Kg</option>
<option>2 Kg</option>
<option>3 Kg</option>
<option>4 Kg</option>
<option>5 Kg</option>
</select>
<p><input type="submit" value="Add To Cart" /></p>
</td>
</tr>
<!-- another cat -->
<!--  <tr>
<td></td>
<td></td>
</tr>
<tr>
<td align="center">
<p>Rs 20 Per Kg</p>
<b>Quantity</b>&nbsp;
<select>
<option>1 Kg</option>
<option>2 Kg</option>
<option>3 Kg</option>
<option>4 Kg</option>
<option>5 Kg</option>
</select>
<p><input type="submit" value="Add To Cart" /></p>
</td>
<td align="center">
<p>Rs 20 Per Kg</p>
<b>Quantity</b>&nbsp;
<select>
<option>1 Kg</option>
<option>2 Kg</option>
<option>3 Kg</option>
<option>4 Kg</option>
<option>5 Kg</option>
</select>
<p><input type="submit" value="Add To Cart" /></p> -->


</table>
<p>&nbsp;</p><p>&nbsp;</p>
</td>
</tr>
</table>
</td>
<td width="300" valign="top">
<table border="0" class="basket" width="200" height="150" cellspacing="0" cellpadding="0" bgcolor="#fefdfd">
<tr>
<td align="center">
<table width="240">
<tr>
<td>
<h3 class="section">&#187;<a href="vegitable.jsp">Vegetable Section</a></h3> 
<h3 class="section">&#187;<a href="fruits.jsp">Fruits Section</a></h3> 
</td>
</tr>
</table>
</td>
</tr>
</table>
&nbsp;
<table border="0" class="basket" width="240" height="150" cellspacing="0" cellpadding="0" bgcolor="#fefdfd">
<tr>
<td align="center">
<p><img src="images/free.png" width="150" height="150" /></p>
</td>
</tr>
</table>
</td>
</tr>
</table>
&nbsp;
<table border="0" width="960" height="70" cellspacing="0" cellpadding="0">
<tr>
<td height="4" bgcolor="green"></td>
</tr>
<tr>
<td height="65" bgcolor="black" align="center" class="foot">
<p>Copyright &copy; 2014 All Rights Reserved @ e-Mandi</p>
</td>
</tr>
</table>
</div>
</div>
</body>
</html>