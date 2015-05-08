<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
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
<td>&nbsp;</td>
<td>&nbsp;Or</td>
</tr>
</form>
<tr>
<td>Register</td>
<td><a href="Register.jsp"><input type="button" value="Register"></a></td>
</tr>
</table>
</center>
<center>
<p><a href="index.jsp">Go Back</a></p>
</center>
</body>
</html>