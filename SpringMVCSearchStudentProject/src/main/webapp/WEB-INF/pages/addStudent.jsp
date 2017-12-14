<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Registration Form</h1>
		<form name="userform" method="post" action="home.jsp">
			<table>
				<tr>
					<td>Studnet Name</td>
					<td><input type="text" name="supName"></td>
				</tr>
				<tr>
					<td>Email ID</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><input type="text" name="gender"></td>
				</tr>
				<tr>
					<td>Course</td>
					<td><input type="text" name="course"></td>
				</tr>

				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile"></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="Address"></td>
				</tr>
				
			</table>
			<br>
			<input type="submit" value="Save">          <input type="reset" value="Clear">
		</form>
	</center>
</body>
</html>