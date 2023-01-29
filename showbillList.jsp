
<%@page import="com.hotelparadise.pojo.Bill"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Insert title here</title>
<script src="js/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/additional-methods.js"></script>
<script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 300
			      });
			});
		    </script>
<style>
th,td{
font-size:20px;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
	<div id="wrapper">																																																																																																																																												<div class="inner_copy"><a href="http://www.websitebuilderbox.com/best-website-builder-for-small-business/">http://www.websitebuilderbox.com/best-website-builder-for-small-business/</a></div>																																																																															
		<jsp:include page="Sidebar.jsp"></jsp:include>
		<br><br>
<table border=2 align="center">
		<%
			List<Bill> blist = (List<Bill>) session.getAttribute("BillDetails");
		%>
		<tr>
			<th>Bill Id</th>
			<th>Customer EmailId</th>
			<th>Total Bill</th>
			<th>Order Date</th>
			
			
		</tr>
		<%
			for (int i = 0; i < blist.size(); i++) {
				Bill b = blist.get(i);
		%>
		<tr>
			<td>
				<%=b.getBillId()%>
			</td>
			<td>
				<%=b.getCustEmailId()%>
			</td>
			<td>
				<%=b.getTotalBill()%>
			</td>
			<td>
				<%=b.getOrderDate()%>
			</td>
			
		</tr>
		<% } %>
	</table>
	</div>
		<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>