
<%@page import="com.hotelparadise.pojo.Hotel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Paradise</title>
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

<%String cname = (String)session.getAttribute("EmailId");
  String admin = (String)session.getAttribute("AdminName");
  List<Hotel> catlist = (List<Hotel>)session.getAttribute("CategoryList");
%>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="wrapper">
<%--  	<jsp:include page="sidebar.jsp"></jsp:include>
 --%> 	<div align="center" style="color:red">
		<h3>
		<% String booksuccess=(String)request.getAttribute("BookingSuccess");
		   if(booksuccess!=null)
		   {
		    out.println(booksuccess);
		   }
		   String bookfail=(String)request.getAttribute("BookingFail");
		   if(bookfail!=null)
		   {
		    out.println(bookfail);
		   }
		   
		   String cb=(String)request.getAttribute("ordersuccess");
		   if(cb!=null)
		   {
			   out.println(cb);
		   }
		   String bf=(String)request.getAttribute("orderfail");
		   if(bf!=null)
		   {
			   out.println(bf);
		   }
		   String feedback = (String)request.getAttribute("FeedbackSuccess");
		   if(feedback!=null)
		   {
			   out.println(feedback);
		   }
		   String feedbackfail = (String)request.getAttribute("Feedbacknotadded");
		   if(feedbackfail!=null)
		   {
			   out.println(feedbackfail);
		   }
		   String customeradd = (String)request.getAttribute("CustomerAdded");
		   if(customeradd!=null)
		   {
			   out.println(customeradd);
		   }
		   String customernot = (String)request.getAttribute("CustomerNotAdded");
		   if(customernot!=null)
		   {
			   out.println(customernot);
		   }
		   String cuslogin = (String)request.getAttribute("Loginsuccess");
		   if(cuslogin!=null)
		   {
			   out.println(cuslogin);
		   }
		   String cusloginfail = (String)request.getAttribute("Loginfail");
		   if(cusloginfail!=null)
		   {
			   out.println(cusloginfail);
		   }
		   String adminlogin = (String)request.getAttribute("AdminLoginsuccess");
		   if(adminlogin!=null)
		   {
			   out.println(adminlogin);
		   }
		   String adminloginfail = (String)request.getAttribute("AdminLoginfail");
		   if(adminloginfail!=null)
		   {
			   out.println(adminloginfail);
		   }
		   
		   String custpasssuccess = (String)request.getAttribute("CustomerPasswordChanged");
		   if(custpasssuccess!=null)
		   {
			   out.println(custpasssuccess);
		   }
		   String custpassfail = (String)request.getAttribute("CustomerPasswordFail");
		   if(custpassfail!=null)
		   {
			   out.println(custpassfail);
		   }
		   
		   String adminpasssuccess = (String)request.getAttribute("AdminPassChange");
		   if(adminpasssuccess!=null)
		   {
			   out.println(adminpasssuccess);
		   }
		   String adminpassfail = (String)request.getAttribute("AdminPassFail");
		   if(adminpassfail!=null)
		   {
			   out.println(adminpassfail);
		   }
		   String customerdeleted = (String)request.getAttribute("CustomerDeleted");
		   if(customerdeleted!=null)
		   {
			   out.println(customerdeleted);
		   }
		   String hoteladded=(String)request.getAttribute("HotelAdded");
		   if(hoteladded!=null)
		   {
		    out.println(hoteladded);
		   }
		   String hotelnotadded=(String)request.getAttribute("HotelNotAdded");
		   if(hotelnotadded!=null)
		   {
		    out.println(hotelnotadded);
		   }
		   String hotelupdated=(String)request.getAttribute("HotelUpdated");
		   if(hotelupdated!=null)
		   {
		    out.println(hotelupdated);
		   }
		   String hotelnotupdated=(String)request.getAttribute("HotelNotUpdated");
		   if(hotelnotupdated!=null)
		   {
		    out.println(hotelnotupdated);
		   }
		   %>
		</h3>
			<div class="bg">
				<div class="column1">
					<img src="images/title2.gif" alt="" width="258" height="21" /><br />
					<p> HotelParadise is a hotelbooking website which provides you with exciting offers on hotels in best cities of India </p>
					<img src="images/title3.gif" alt="" width="258" height="21" /><br />
					<div id="items">
						<div class="item">
							<a href="#"><img src="images/gatewayMumbai.jpeg" alt="" height="150" width="200" /></a>
							<span><a href="#">Mumbai</a></span>
						</div>
						<div class="item">
							<a href="#"><img src="images/indiagate.jpeg" alt="" height="150" width="200"/></a>
							<span><a href="#">Delhi</a></span>
						</div>
						<div class="item">
							<a href="#"><img src="images/goabeach.jpeg" alt="" height="150" width="200"/></a>
							<span><a href="#">Goa</a></span>
						</div>
						<div class="item">
							<a href="#"><img src="images/manali.jpeg" alt="" height="150" width="200"/></a>
							<span><a href="#">Manali</a></span>
						</div>
					</div>
				</div>
				<div class="column2">
					<img src="images/title4.gif" alt="" width="133" height="18" /><br />
					<div class="news">
						<span>24 may 0000</span><br />
						<p> Click for some of the best offers coming season<p>
						<a href="#" class="more">more info</a>
					</div>
					<div class="news">
						<span>12 may 0000</span><br />
						<img src="images/pic5.jpg" alt="" width="183" height="97" />
						<p> Click for some of the best offers coming season</p>
						<a href="#" class="more">more info</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>

