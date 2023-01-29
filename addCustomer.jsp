<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script>
function validation()
{
	var count = 0;
	var x = document.getElementsByClassName("valid");
	var contactno = x[3].value;
	var re = /[0-9]/;
	var re1 = /[a-z]/;
	var re2 = /[A-Z]/;
	var pass = x[4].value;
	for(var i=0;i<x.length;i++)
	{
		if(x[i].value=="")
		{
			x[i].nextElementSibling.innerHTML = "Fields cannot be blank";
			x[i].nextElementSibling.style.color="red";
			count++;
		}
		if(isNaN(x[3].value))
		{
			x[3].nextElementSibling.innerHTML = "Please Enter Digit";
			x[3].nextElementSibling.style.color = "red";
			count++;
		}
		 if(!isNaN(x[0].value))
		{
			x[0].nextElementSibling.innerHTML = "Please enter valid name";
			x[0].nextElementSibling.style.color = "red";
			count++;
		}
		 else if(contactno.length!=10)
		{
			x[3].nextElementSibling.innerHTML = "Contact number should be of 10 digits";
			x[3].nextElementSibling.style.color = "red";
			count++;
		}
		 if(!re.test(pass)||!re1.test(pass)||!re2.test(pass))
		 {
			 x[4].nextElementSibling.innerHTML = "Password should contain 1 capital and small letter, 1 digit";
			 x[4].nextElementSibling.style.color = "red";
			 count++;
		 }
		 
	}
	if(count>0)
	{
		return false;
	}
	return true;
	}
	function clearUp(y)
	{
		if(y.value!="")
		{
			y.nextElementSibling.innerHTML="";
		}
	
}

</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wrapper">	
	<jsp:include page="sidebar.jsp"></jsp:include>
<form onsubmit="return validation()" action="CustomerServlet"  method="post">
<input type="hidden" name="action" value="addCustomer">
<table cellspacing=10>
<caption><b>Customer Details:<b></caption>
<tr>
<th>Customer Name:</th>
<td><input type="text" name="customername" class="valid" onkeyup="clearUp(this)"><span></span></td>
</tr>
<tr>
<th>Address:</th>
<td><textarea rows=5 cols=10 name="address" class="valid" onkeyup="clearUp(this)"></textarea><span></span></td>
</tr>
<tr>
<th>Email Id:</th>
<td><input type="email" name="emailid" class="valid" onkeyup="clearUp(this)"><span></span></td>
</tr>
<tr>
<th>Contact Number:</th>
<td><input type="text" name="contactno" class="valid" onkeyup="clearUp(this)"><span></span></td>
</tr>
<tr>
<th>Password:</th>
<td><input type="password" name="password" class="valid" onkeyup="clearUp(this)"><span></span></td>
</tr>
<tr>
<tr>
<td><input type="submit" value="Register"></td>
<td><input type="reset" value="clear"></td>
</tr>
</table>
</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>