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


</head>
<body>
	<!-- start header -->
	<div id="header">
		<div id="logo">
			<i><h1>
					<a href="#"><span>Milk</span>Dairy</a>
				</h1></i>
			<p>Designed By SCTS Group</p>
		</div>
		<div id="menu">
			<ul id="main">
				<li class="#"><a href="#">Home</a></li>
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
				<h1>All Supliers Detail</h1>
				<form name="getAllSuplier" method="get" action="ListSuplier"
					modelAttribute="command">
					<input type="submit" value="Display Supliers"> 
				</form>
				<form>
					<h3>Suplier List</h3>
					 <c:if test="${!empty listSupliers}">
					 <c:out value="${listSupliers}" />
						<table class="tg">
							<tr>
								<th width="80">Suplier ID</th>
								<th width="120">Suplier Name</th>
								<th width="120">Suplier email</th>
								<th width="120">Suplier Gender</th>
								<th width="120">Suplier Mobile</th>
								<th width="120">Suplier address</th>
							</tr>
							<c:forEach items="${listSupliers}" var="suplier">
								<tr>
									<td>${suplier.supId}</td>
									<td>${suplier.supName}</td>
									<td>${suplier.email}</td>
									<td>${suplier.gender}</td>
									<td>${suplier.mobile}</td>
									<td>${suplier.address}</td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
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
								<img src="/resources/css/images/map.jpg" height="200" width="225" />

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
			&copy;&nbsp;&nbsp;2017 All Rights Reserved &nbsp;&bull;&nbsp; Design
			by <a href="http://www.freecsstemplates.org/"> Group</a>.
		</p>
		<p class="link">
			<a href="#">Privacy Policy</a>&nbsp;&#8226;&nbsp;<a href="#">Terms
				of Use</a>
		</p>
	</div>
</body>
</html>
