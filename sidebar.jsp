<%@page import="java.util.List"%>
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
<% List<Hotel> catlist = (List<Hotel>)session.getAttribute("CategoryList"); %>
																																																																																																																																												<div class="inner_copy"><a href="http://www.websitebuilderbox.com/best-website-builder-for-small-business/">http://www.websitebuilderbox.com/best-website-builder-for-small-business/</a></div>																																																																															
		<div id="sidebar">
			<div class="logo_block">
				<a href="#"><img src="images/logo.jpg" alt="setalpm" width="198" height="156" /></a><br />
				<span class="slogan">Best offers for You</span>
				<p class="text1">Hotel paradise provides Hotels at Exotic location all around India.</p>
			</div>
			<img src="images/title1.gif" alt="" width="126" height="21" /><br />
			<ul id="navigation">
				<%for(int i=0;i<catlist.size();i++)
				{
					Hotel h = catlist.get(i);
					%>
					<li class="color"><a href="HotelServlet?action=getHotelByType&type=<%=h.getHotelType()%>"><%=h.getHotelType()%></a>
					
				<% }%>
			</ul>
		</div>	 
		<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides" id="slider1">
					     <!--  <li><img src="images/slider1.jpg" height="500"></li> -->
					      <li><img src="images/amristar.jpg" height="200" width="300"></li>
					      <li><img src="images/goabeach.jpeg" height="200" width="300"></li>
					      <li><img src="images/gatewayMumbai.jpeg" height="200" width="300"></li>
					      <!-- <li><img src="images/home4.jpg" height="500"></li>
					       <li><img src="images/home5.jpg" height="500"></li> -->
					      
					    </ul>
						 <!-- Slideshow 2 -->
					</div>
					
		<!-- <div id="content">
			<div class="search"><span>Search</span> <input type="text" /></div> -->
		
		
</body>
</html>