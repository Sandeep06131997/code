<%@page import="com.hotelparadise.pojo.Feedback"%>
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
<jsp:include page="header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="sidebar.jsp"></jsp:include>
	<table border=2>
<%List<Feedback> flist = (List<Feedback>)session.getAttribute("FeedBackList"); %>
<tr>
<th>Name</th>
<th>EmailId</th>
<th>ContactNo</th>
<th>Comment</th>
</tr>
<%for(int i=0;i<flist.size();i++)
{
	Feedback f = flist.get(i);%>
<tr>
<td><%=f.getName() %></td>
<td><%=f.getEmailId() %></td>
<td><%=f.getContactNo() %></td>
<td><%=f.getComment() %></td>

</tr>
<%}%>
</table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>