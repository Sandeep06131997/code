<%@page import="com.hotelparadise.pojo.Customer"%>
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
<jsp:include page="header.jsp"></jsp:include>
<div id="wrapper">	
	<jsp:include page="sidebar.jsp"></jsp:include>
<%Customer c = (Customer)session.getAttribute("Customer");%>
<form action="CustomerServlet"  method="post">
<input type="hidden" name="action" value="updateCustomer">
<table cellspacing=10>
<caption><b>Customer Details:<b></caption>
<tr>
<th>Customer Id:</th>
<td><input readonly type="text" name="customerid"  value="<%=c.getCustomerId()%>"></td>
</tr>
<tr>
<th>Customer Name:</th>
<td><input type="text" name="customername" value="<%=c.getCustomerName() %>"></td>
</tr>
<tr>
<th>Address:</th>
<td><input type="text" name="address" value="<%=c.getCustomerAddress() %>"></td>
</tr>
<tr>
<th>EmailId:</th>
<td><input type="text" name="emailid" value="<%=c.getEmailId() %>"></td>
</tr>
<tr>
<th>Contact Number:</th>
<td><input type="text" name="contactno" value="<%=c.getContactNo()%>"></td>
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