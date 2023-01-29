<%@page import="com.hotelparadise.pojo.Hotel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />

<title>Insert title here</title>
</head>
<body>
<% String cname=(String)session.getAttribute("Cemailid");
String admin=(String)session.getAttribute("Aemailid");%>
<jsp:include page="header.jsp"></jsp:include>
	<div id="wrapper">																																																																																																																																												<div class="inner_copy"><a href="http://www.websitebuilderbox.com/best-website-builder-for-small-business/">http://www.websitebuilderbox.com/best-website-builder-for-small-business/</a></div>																																																																															
<%-- 		<jsp:include page="sidebar.jsp"></jsp:include>
 --%>	
		<%
			List<Hotel> hlist = (List<Hotel>) session.getAttribute("HotelDetails");
		%>
		
		<div id="templatemo_content_right">
		<%
			for (int i = 0; i < hlist.size(); i++) {
				Hotel h = hlist.get(i);
		%>
				<div class="templatemo_product_box">
				<h1><%=h.getHotelName()%></h1>
				<img src="ImageServlet?id=<%= h.getHotelId() %>" width="200px" height="200px">
				<div class="product_info">
			
				<h3><%=h.getHotelPrice()%></h3>
			<% if (cname!=null) { %>
							<div class="buy_now_button">
							<a href="BookingServlet?action=addBooking&hotelid=<%=h.getHotelId()%>"> Select</a>
						</div>
						<% } %>
						<div class="detail_button">
							<a href="HotelServlet?action=showdetails&hotelid=<%=h.getHotelId()%>">Detail</a>
						</div>
			<% if (admin!=null) { %>
			<div>
	<a href="HotelServlet?action=edit&hotelid=<%=h.getHotelId()%>" style="color: red">Edit</a>
	<a href="HotelServlet?action=delete&hotelid=<%=h.getHotelId()%>" style=""color: red">Delete</a>
	</div>
	<% } %>
	</div>
	<div class="cleaner">&nbsp;</div>
				</div>

				<div class="cleaner_with_width">&nbsp;</div>
		<% } %>
	
		</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>