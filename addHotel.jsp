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

$(document).ready(function()
		{
			$("#1").validate(
			{
				rules:
				{
					hotelname:{required:true,lettersonly:true},
					hotelprice:{required:true,number:true},
					hoteltype:{required:true,lettersonly:true},
					location:{required:true,lettersonly:true},
					description:{required:true,maxlength:200}
				}
			});
		});
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wrapper">	
	<jsp:include page="sidebar.jsp"></jsp:include>
<form id="1" action="HotelServlet"  method="post" enctype="multipart/form-data">
<input type="hidden" name="action" value="addHotel">
<table cellspacing=10>
<caption><b>Hotel Details:<b></caption>
<tr>
<th>Hotel Name:</th>
<td><input type="text" placeholder="insert hotel name" name="hotelname"></td>
</tr>
<tr>
<th>Hotel Price:</th>
<td><input type="text" placeholder="insert hotel price" name="hotelprice"></td>
</tr>
<tr>
<th>Hotel Type:</th>
<td><input type="text" placeholder="insert hotel type" name="hoteltype"></td>
</tr>
<tr>
<th>Location:</th>
<td><input type="text" placeholder="insert location" name="location"></td>
</tr>
<tr>
<th>Upload Hotel Image:</th>
<td><input type="file" name="hotelimage"></td>
</tr>
<tr>
<th>Hotel Description:</th>
<td><textarea rows=10 cols=20 placeholder="Hotel details maxlength=200" name="description"></textarea></td>
</tr>
<tr>
<td><input type="submit" value="addHotel"></td>
<td><input type="reset" value="clear"></td>
</tr>
</table>
</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>