<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/responsiveslides.css">
<link rel="stylesheet" type="text/css" href="style.css" />
<style>
label.error{
color:red;
}
</style>
</head>
<body>
<%String cname = (String)session.getAttribute("EmailId");
  String admin = (String)session.getAttribute("AdminName");
%>
<div id="header">																																																																									
		<div class="login">
			<!-- <input type="text" class="input" value="Login" /> <input type="text" class="input" value="Password" />																																			
			<div class="enter"><a href="#">Enter</a></div> -->
			<div class="links"><%if(admin==null && cname==null) {%><a href="login.jsp">Login</a><%} %>| <a href="addCustomer.jsp">Registration</a></div>
		</div>
		<ul id="menu">
			<li><a href="Home.jsp">Home page</a></li>
			<%if(admin==null && cname==null) {%>
			<li><a href="Contactus.jsp">Contact us</a></li>  
			<%} %>                                                                                                                                                                                                                                                                                                                             
			<li><a href="HotelServlet?action=showhotels">Hotels</a></li>
			<li><a href="Search.jsp">Search</a></li>                       
			
			<%if(admin!=null){ %>
			<li><a href="addHotel.jsp">Add Hotels</a></li>
			<li><a href="CustomerServlet">Show Customers</a></li>
			<li><a href="BookingServlet?action=showBill">Show Bills</a></li>
			<li><a href="CustomerServlet?action=showFeedBack">Show FeedBack</a></li>
			<%} %>
			<%if(cname!=null){ %>
			<li><a href="Feedback.jsp">Give Feedback</a></li>
			<li><a href="CustomerServlet?action=getCustomerByEmailId&emailid=<%=cname%>">Edit Profile</a></li>
			<li><a href="BookingServlet">View Booking</a></li>
			<%} %>
			<%if(admin!=null || cname!=null){ %>
			<li><a href="LoginServlet">Logout</a></li>
			<%} %>
			
			
		</ul>
	</div>
</body>
</html>