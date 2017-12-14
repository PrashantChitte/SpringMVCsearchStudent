<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Premium Series by Free CSS Templates</title>
<meta name="keywords" content="" />
<meta name="Premium Series" content="" />
<link href="<c:url value="/resources/css/default.css"/>" type="text/css"
	rel="stylesheet" media="screen" />
<script type="text/javascript">
	function validation() {
		if (document.f.custId.value == "") {
			alert("Plz enter your id!");
			return false;
		}
		if (document.f.custName.value == "") {
			alert("Plz enter your name!");
			return false;
		}
		var phoneno = /^\d{10}$/;
		if (document.f.mobno.value.match(phoneno)) {

		} else {
			alert("Please enter 10 digit mobile number");
			return false;
		}
		if (document.f.address.value == "") {
			alert("Please Enter Your Details Here");
			return false;
		}
		if (document.f.password.value == ""
				|| document.f.password.value.length >= 8
				|| document.f.password.value.length <= 4) {
			alert("Plz enter password (length should be between 4 to 8)");
			return false;
		}
		var fup = document.f.photo;
		var fileName = fup.value;
		var ext = fileName.substring(fileName.lastIndexOf('.') + 1);
		if (document.f.photo == file[0] || ext == "gif" || ext == "GIF"
				|| ext == "JPEG" || ext == "jpeg" || ext == "jpg"
				|| ext == "JPG" || ext == "doc") {
			return true;
		} else {
			alert("Upload Gif or Jpg images only");
			fup.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<!-- start header -->
	<div id="header">
		<div id="logo">
			<i><h1>
					<a href="#"><span>Milk</span>Dairy</a>
				</h1></i>
			<p>Designed By BMC Group</p>
		</div>
		<div id="menu">
			<ul id="main">
				<li class="#"><a href="home">Home</a></li>
				<li><a href="#">Suppliers</a></li>
				<li><a href="#">Buyers</a></li>
				<li><a href="#">Products</a></li>
				<li><a href="#">About us</a></li>
				<li><a href="#">Contact us</a></li>
				<li><a href="#">profile</a></li>
				<li><a href="#">Report</a></li>
				<li><a href="#">Logout</a></li>
			</ul>
		</div>

	</div>
	<!-- end header -->
	<div id="wrapper">
		<!-- start page -->
		<div id="page">
			<div id="sidebar1" class="sidebar">
				<ul>

					<li>
						<h2>Create Users</h2>
						<ul>
							<li><a href="#">Admin</a></li>
							<li><a href="#">Supplier</a></li>
							<li><a href="#">Customer</a></li>

						</ul>
					</li>
					<li>
						<h2>All Products</h2>
						<ul>
							<li><a href="Milk.jsp">Milk</a></li>
							<li><a href="Butter.jsp">Butter</a></li>
							<li><a href="Pannir.jsp">Pannir</a></li>
							<li><a href="MilkPowder.jsp">Milk Powder</a></li>
							<li><a href="Curd.jsp">Curd</a></li>
							<li><a href="Ghee.jsp">Ghee</a></li>
						</ul>
					</li>

				</ul>
			</div>
			<!-- start content -->
			<div id="content">
				<center>
				<h1>Registration Form</h1>
				<form name="addSuplier" method="post" action="addSuplier"
					modelAttribute="command">
					<table>
						<tr>
							<td>Suplier Name</td>
							<td><input type="text" name="supName" path="supName"></td>
						</tr>
						<tr>
							<td>Email ID</td>
							<td><input type="text" name="email" path="email"></td>
						</tr>
						<tr>
							<td>Gender</td>
							<td><input type="radio" name="gender" value="Male" path="gender" checked>Male</td>
							<td><input type="radio" name="gender" value="Female" path="gender">Female</td>
						</tr>
						<tr>
							<td>Mobile</td>
							<td><input type="text" name="mobile" path="mobile"></td>
						</tr>
						<tr>
							<td>Address</td>
							<!-- <td><input type="text" name="address" path="address"></td> -->
							<td><select name="address" path="address">
									<option selected="selected">Latur</option>
									<option>Anagar</option>
									<option>Pune</option>
									<option>Phalatan</option>
							</select></td>
						</tr>

					</table>
					<br> <input type="submit" value="Save"> <input
							type="reset" value="Clear">
				</form>
				</center>

			</div>
			<!-- end content -->
			<!-- start sidebars -->
			<div id="sidebar2" class="sidebar">
				<ul>
					<li>
						<form id="searchform" method="get" action="#">
							<div>
								<h2>Site Map</h2>
								<img src="images/Awesome.jpg" height="200" width="225" />

							</div>
						</form>
					</li>

					<li>
						<div>
							<u>
							<h2>Prashant Chitte:
							</u></br>
							</h2>
							<hr>
								<h3>prashant201291@gmail.com
							</hr>
							</br> 9766905856</br>
							</h3>
							</br> </br>
						</div>
					</li>
				</ul>
			</div>
			<!-- end sidebars -->
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end page -->
	</div>
	<div id="footer">
		<p class="copyright">
			&copy;&nbsp;&nbsp;2015 All Rights Reserved &nbsp;&bull;&nbsp; Design
			by <a href="http://www.freecsstemplates.org/">SCTS Group</a>.
		</p>
		<p class="link">
			<a href="#">Privacy Policy</a>&nbsp;&#8226;&nbsp;<a href="#">Terms
				of Use</a>
		</p>
	</div>
</body>
</html>
