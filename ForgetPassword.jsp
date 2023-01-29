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
	<form action="LoginServlet" name="action" method="post">
	<input type="hidden" name="action" value="ForgetPassword">
	<table borde=3>
	<tr>
	<td>Type:</td>
	<td><select name="type"><option value="Admin">Admin</option><option value="Customer">Customer</option></td>
	</tr>
	
	<tr>
	<th>UserNmae:</th>
	<td><input type="name" name="myname" id="uname"></td>
	</tr>
	
	<tr>
	<th>New Password:</th>
	<td><input type="password" name="newpassword"></td>
	</tr>
	
	<tr>
<td><input type="submit" value="Submit"></td>
<td><input type="reset" value="Cancel"></td>
</tr>
	</table>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>