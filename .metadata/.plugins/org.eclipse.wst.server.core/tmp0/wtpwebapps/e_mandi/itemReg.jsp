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
<table border="0" width="960" height="260" cellspacing="0" cellpadding="0">
<tr>
<td height="30" bgcolor="black" class="order">
<table border="0" width="960" height="30" cellspacing="0" cellpadding="0">
<tr>
<td align="center"><p>To Order Call @ 88 88 80 80 80 (Open 9 AM - 8 PM)</p></td>
<td align="center">
<!-- user login details -->
<%  
String uadmin =(String)session.getAttribute("admin1");
out.print("<h2>Welcome "+ uadmin); %>&nbsp;
<a href="Logout1"><input type="button" value="Logout"></a></h2> </td>
<td align="center"></td>
</tr></table>
</td>
</tr>
<tr>
<td class="bann">
<!--  banner -->
</td>
</tr>
</table>
<table border="0" width="960" height="40" cellspacing="0" cellpadding="0">
<tr bgcolor="green">
<td align="center" class="tab"><a href="index.jsp">HOME</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="#">HOW TO ORDER</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="#">OUR PRODUCTS</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="#">QUICK ORDER</a></td>
<td align="center" class="tab">|</td>
<td align="center" class="tab"><a href="#">DELIVERY INFO</a></td>
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
<h2>Register Items</h2>

<form action="ItemUpload" enctype="multipart/form-data" method="post">
<table border="0" width="400" cellspacing="10">
<tr>
<td>Item ID:</td>
<td><input type="text" name="id" /></td>
</tr>
<tr>
<td>Item Name:</td>
<td><input type="text" name="iname" /></td>
</tr>
<tr>
<td>Item Rate:</td>
<td><input type="text" name="rate" /></td>
</tr>
<tr>
<td>Item Category:</td>
<td><select name="cat">
<option value="vegetable">Vegetable</option>
<option value="fruit">Fruit</option>
</select></td>
</tr>
<tr>
<td>Item Image:</td>
<td><input type="file" name="itemphoto" /></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Insert Item" /></td>
</tr>
</table>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
</tr>
</table>

</td>
<td width="300" valign="top">
 <!-- 
<table border="0" class="basket" width="200" height="150" cellspacing="0" cellpadding="0" bgcolor="#fefdfd">
<tr>
<td align="center">
  <p><img src="images/login.png" /></p>
<table width="240">
<tr>
<td>User Name</td>
<td><input type="text" name="uname"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pass"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Login">

</td></tr></table>

</td>
</tr>
</table>
-->
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