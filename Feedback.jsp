<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.js"></script>
<script src="js/additional-methods.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script>
$(function () {
	
    // Slideshow 1
    $("#slider1").responsiveSlides({
      maxwidth: 1600,
      speed: 600
    });
});
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="sidebar.jsp"></jsp:include>

<form action="CustomerServlet" method="post">
<input type="hidden" name="action" value="addFeedback">
<table>
<tr>
<td>Company Information:</td>
<td></td>
</tr>
<tr>
<td>Address:</td>
<td>Borivali West.</td>
</tr>
<tr>
<td>Phone No:</td>
<td>1231456788</td>
</tr>
<tr>
<td>Email Id:</td>
<td>abc@gmail.com</td>
</tr>
<tr>
<td>Give us feedback here:</td>
</tr>
<tr>
<td>Name:</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Email Id:</td>
<td><input type="text" name="email"></td><br>
</tr>
<tr>
<td>Mobile no:</td>
<td><input type="text" name="contactno"></td>
</tr>
<tr>
<td>Comment:</td>
<td><textarea rows=10 cols=10 name="comment"></textarea></td>
</tr>
<tr>
<td align="right"><input type="submit"  value="Done"></td>
</tr>
</table>
</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>