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
<td>
<!-- user login details -->


</td>
<td align="center"><h2 class="admin"><a href="admin.jsp">Admin Login</a></h2></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="bann">
<!--  banner-->
</td>

</tr>
</table>
<table border="0" width="960" height="40" cellspacing="0" cellpadding="0">
<tr bgcolor="green">
<td align="center" class="tab"><a href="index.jsp">HOME</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="howToOrder.jsp">HOW TO ORDER</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="ourProducts.jsp">OUR PRODUCTS</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="deliveryInfo.jsp">DELIVERY INFO</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="contactUs.jsp">CONTACT US</a></td>
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
<td align="center" valign="top">
<p><img class="bask" src="images/cate.png" width="400" height="31"/></p>
<table border="0" width="400" cellspacing="20">
<tr>
<td><a href="checkValidation"><img src="images/veg.jpg" width="400"/></a></td>
</tr>
<tr>
<td align="center" class="cat"><b><a href="checkValidation">Buy Vegetables and Fruits</a></b></td>
</tr>
</table>
<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
</td>
</tr>
</table>
</td>
<td width="300" valign="top">
<table border="0" class="basket" width="200" height="150" cellspacing="0" cellpadding="0" bgcolor="#fefdfd">
<tr>
<td align="center">
<p><img src="images/login.png" /></p>



<form action="Validate" method="post">
<table width="240">
<tr>
<td>Email Id</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pass"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Login"></td>
</tr>

<tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;Or</td>
</tr>
</form>
<tr>
<td>Register
<p>&nbsp;</p></td>
<td><a href="Register.jsp"><input type="button" value="Register"></a>
<p>&nbsp;</p>
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