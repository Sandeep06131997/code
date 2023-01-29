<%@page import="com.hotelparadise.pojo.Hotel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
Hotel h=(Hotel)session.getAttribute("Hotel");
%>

<jsp:include page="header.jsp"></jsp:include>
	<div id="wrapper">																																																																																																																																												<div class="inner_copy"><a href="http://www.websitebuilderbox.com/best-website-builder-for-small-business/">http://www.websitebuilderbox.com/best-website-builder-for-small-business/</a></div>																																																																															
		<jsp:include page="sidebar.jsp"></jsp:include>
		
		<fieldset align="center">
		<legend align="center">DETAILS</legend>
		<table align="center">
		<tr>
		<td>
		<img src="ImageServlet?id=<%=h.getHotelId() %>" width="500px" height="500px" ><br>
		</td>
		<td style="float:right; padding: 70x">
		
		<h3>Name</h3>
		<p><%=h.getHotelName() %></p><br>
		
		<h3>Location</h3>
		<p><%=h.getHotelLocation() %></p><br>
		
		<h3>Price</h3>
		<p><%=h.getHotelPrice() %></p><br>
		
		<h3>Category</h3>
		<p><%=h.getHotelType() %></p><br>
		
		<h3>Description</h3>
		<p><%=h.getHotelDescription()%></p><br>
		
		</td>
		</tr>
		</table>
		</fieldset>
		</div>
		
		
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>