<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.js"></script>
<style>
label.error{
color:red;
}
</style>
<script type="text/javascript">
$(document).ready(
	function()
	{
		$("#1").validate(
		{
			rules:
			{
				username:{required:true},
				pass:{required:true,minlength:5,maxlength:20},
				cpass:{required:true,minlength:5,maxlength:20,equalTo:'#pass'},
				email:{required:true},
				contactno:{required:true,number:true},
			},
			messages:
			{
		    username:{minlength:"minlength=5",maxlength:"maxlength=20",required:"*"},
			pass:{minlength:"minlength=5",maxlength:"maxlength=20"},
			cpass:{minlength:"minlength=5",maxlength:"maxlength=20",equalTo:"enter same pass"},
			
		}  
		});
	});

</script>
</head>
<body>
<form id="1">
<table >
<tr>
	<td>Name</td>
	<td><input placeholder="insert name" type=text name=username></td>
</tr>
<tr>
	<td>Password</td>
	<td><input id=pass placeholder="insert password"  type=password name=pass></td>
</tr>
<tr>
	<td>Confirm Password</td>
	<td><input placeholder="confirm password"  type=password name=cpass><span></span></td>
</tr>
<tr>
	<td>Email</td>
	<td><input placeholder="insert email"  type=email name=email><span></span></td>
</tr>
<tr>
	<td>Contact No</td>
	<td><input placeholder="insert contactno"  type=text name=contactno><span></span></td>
</tr>
<tr>
	<td><input type=submit value="Submit"></td>
</tr>

</table>
</form>

</body>
</html>