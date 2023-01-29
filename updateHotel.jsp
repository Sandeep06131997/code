<%@page import="com.hotelparadise.pojo.Hotel"%>
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
	<jsp:include page="sidebar.jsp"></jsp:include>
<%Hotel h = (Hotel)session.getAttribute("Hotel");%>
<form action="HotelServlet"  method="post">
<input type="hidden" name="action" value="updateHotel">
<table cellspacing=5 border=2>
<caption><b>Hotel Details:<b></caption>
<tr>
<th>Hotel Id:</th>
<td><input readonly type="text" name="hotelid"  value="<%=h.getHotelId()%>"></td>
</tr>
<tr>
<th>Hotel Name:</th>
<td><input type="text" name="hotelname" value="<%=h.getHotelName() %>"></td>
</tr>
<tr>
<th>Hotel Price:</th>
<td><input type="text" name="hotelprice" value="<%=h.getHotelPrice()%>"></td>
</tr>
<tr>
<th>Hotel Type:</th>
<td><input type="text" name="hoteltype" value="<%=h.getHotelType()%>"></td>
</tr>
<tr>
<th>Location:</th>
<td><input type="text" name="location" value="<%=h.getHotelLocation()%>"></td>
</tr>
<tr>
<td><input type="submit" value="update"></td>
<td><input type="reset" value="clear"></td>
</tr>
</table>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>