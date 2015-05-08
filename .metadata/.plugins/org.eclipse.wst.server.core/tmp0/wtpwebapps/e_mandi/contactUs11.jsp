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
<div id="container">
<div id="main">
<table border="0" width="960" height="255" cellspacing="0" cellpadding="0">
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
<a href="Logout1"><input type="button" value="Logout"></a></h2> </td>
<td align="center"><h2 class="admin"><a href="#">Admin Login</a></h2></td>
</tr></table></td>
</tr>
<tr>
<td class="bann">
<!--  banner -->
</td>
</tr>
</table>
<table border="0" width="960" height="40" cellspacing="0" cellpadding="0">
<tr bgcolor="green">
<td align="center" class="tab"><a href="SuccessLogin.jsp">HOME</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="howToOrder11.jsp">HOW TO ORDER</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="ourProducts11.jsp">OUR PRODUCTS</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="deliveryInfo11.jsp">DELIVERY INFO</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="contactUs11.jsp">CONTACT US</a></td>
</tr>
</table>
<br/>
<table border="0" width="960" height="auto" cellspacing="0" cellpadding="0">
<tr>
<td width="200" valign="top">
<table class="basket" width="200" height="150" cellspacing="0" cellpadding="0" bgcolor="#fefdfd">
<tr>
<td align="center" valign="top">
<p><img src="images/basket.png" width="180"/></p>
<p class="bask"><b>Your Cart:</b></p>
<p>Item Selected = <% Integer a=(Integer)session.getAttribute("count");
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
</p>

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
<td  valign="top">
<h2 align="center">Welcome to Our e-Mandi</h2>
<div id="con1">
<p><b>Contact Us</b></p>
<p>Akash Sharma (<b>Web Developer</b>)</p>
<p>&nbsp;</p>
<p>Dilip K. (<b>Web Developer</b>)</p>
<p>You can call ON    88 88 80 80 80 , to contact us.</p>

<p>&nbsp;</p>

<center><p> Thank You for Using E-Mandi</p></center>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
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