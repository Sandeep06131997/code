<%@page import="com.hotelparadise.pojo.HotelBooking"%>
<%@page import="java.util.List"%>
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
<form action="BookingServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
<table border=2>
<%List<HotelBooking> hblist = (List<HotelBooking>)session.getAttribute("BookingDetails"); %>
<tr>
<th>Hotel Name</th>
<th>Number of Rooms</th>
<th>Number of Days</th>
<th>Price</th>
</tr><%for(int i=0;i<hblist.size();i++)
{
	HotelBooking hb = hblist.get(i);
	%>
<tr>
<td><%=hb.getHotelName() %></td>
<td><input type="number" name="noofrooms" value=<%=hb.getNumberOfRooms() %>></td>
<td><input type="number" name="noofdays" value=<%=hb.getNumberOfDays() %>></td>
<td><%=hb.getHotelPrice() %></td>
<input type="hidden" name="hotelprice" value="<%=hb.getHotelPrice()%>">
<td><a href="BookingServlet?action=delete&bookingId=<%=hb.getBookingId()%>">Cancel Booking</a></td>
</tr>
<%} %>
<tr>
<td colspan=3 align="center"><input type="submit" value="Confirm Booking"></td>
</tr>
</table>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>