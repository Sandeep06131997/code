<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	
<form action="HotelServlet" method="post">
<input type="hidden" name="action" value="searchhotel">
<table>
<tr>
<td>Enter HotelName:</td>
<td><input type="text" name="hotelname"></td>
<td><input type="submit" value="Search"></td>
</tr>
</table>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>