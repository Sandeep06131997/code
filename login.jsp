<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="sidebar.jsp"></jsp:include>
<form action="LoginServlet" method="post">
<input type="hidden" name="action" value="Login">
<table>
<tr>
<td>Type:</td>
<td><select name="type"><option value="Admin">Admin</option><option value="Customer">Customer</option></td>
</tr>
<tr>
<td>UserName:</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td><input type="submit" value="Login"></td>
<td><input type="reset" value="Cancel"></td>
</tr>
</table>
<a href="ForgetPassword.jsp">Forgot password</a> 
</form>
</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>