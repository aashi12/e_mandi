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
<td bgcolor="green" height="450" align="center">
<!--  payment details    -->
<% Integer tot=(Integer)session.getAttribute("amount"); %>
<h3 style="background: pink">Total Payment &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INR &nbsp; Rs&nbsp;<%= tot %>.00</h3>
<h3 style="background: pink">Select Payment Mode</h3>
 <input type="radio" name="pay"/> &nbsp;Debit Card&nbsp;&nbsp;
<input type="radio" name="pay"/> &nbsp;Credit Card&nbsp;&nbsp;
<input type="radio" name="pay"/> &nbsp;Net Banking&nbsp;&nbsp;
<p>&nbsp;</p>
Select : <select>
<option>State Bank of India</option>
<option>Panjab National Bank</option>
<option>ICICI</option>
<option>HDFC</option>
<option>Cenera Bank of India</option>
</select>
<p>&nbsp;</p>
<input type="button" value="Make Payment" />
<p>&nbsp;</p>
<hr/>
<p><img src="images/card.jpg" /></p>
</td>
</tr>
<tr>
<td height="7" bgcolor="black"></td>
</tr>
</table>
</div>
</div>
</body>
</html>