<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
			<p>Designed By Donald TeaClub Group</p>
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


				<form:form action="addSupUpadate" method="post"  commandName="supbean">
					<c:if test="${!empty supbean}">
						<table>
							<tr>
								<td>Suplier Id</td>
								<td><input type="text" name="supId" path="supId"
									value="${supbean.supId}"/></td>
							</tr>
							<tr>
								<td>Suplier Name</td>
								<td><input type="text" name="supName" path="supName"
									value="${supbean.supName}"/></td>
							</tr>
							<tr>
								<td>Email ID</td>
								<td><input type="text" name="email" path="email"
									value="${supbean.email}"/></td>
							</tr>
							<tr>
								<c:set value="&{supbean.gender}" var="radiovaue"></c:set>
								<c:out value="radiovaue"></c:out>
								<td>Gender</td>
								<td><input type="radio" name="gender" value="Male"
									path="gender" value="${supbean.gender}"
									<c:if test="${radiovaue=='Male'}"> checked="checked" </c:if>/>Male</td>
								<td><input type="radio" name="gender" value="female"
									path="gender" value="${supbean.gender}"
									<c:if test="${radiovaue=='female'}">checked</c:if>/>Female</td>
							</tr>
							<tr>
								<td>Mobile</td>
								<td><input type="text" name="mobile" path="mobile"
									value="${supbean.mobile}"/></td>
							</tr>
							<tr>
								<td>Address</td>
								<td><select name="address" path="address"
									value="${supbean.address}">
										<option>Wadi</option>
										<option>Girvi</option>
										<option>Phalatan</option>
								</select></td>
							</tr>

						</table>
						</br> 
							<input type="submit" value="Save"/> 
							<input type="reset" value="Clear"/>
					</c:if>
				</form:form>
				</center>
				<center>
				<h1>All Supliers Detail</h1>
				<form:form name="getAllSuplier" method="get" action="ListSuplier">
					<input type="submit" value="Display Supliers"> </input>
				</form:form>

				<form modelAttribute="command" method="get">

					<h3>Suplier List</h3>
					<%--  <c:out value="${listSupliers}" /> --%>
					<c:if test="${!empty listSupliers}">

						<table class="tg" border="">
							<tr>
								<th width="20">Suplier ID</th>
								<th width="120">Suplier Name</th>
								<th width="100">Suplier email</th>
								<th width="80">Suplier Gender</th>
								<th width="90">Suplier Mobile</th>
								<th width="90">Suplier address</th>
								<th width="120">Edit/Delete</th>
							</tr>
							<c:forEach items="${listSupliers}" var="item">
								<tr>
									<td>${item.supId}</td>
									<td>${item.supName}</td>
									<td>${item.email}</td>
									<td>${item.gender}</td>
									<td>${item.mobile}</td>
									<td>${item.address}</td>
									<td align="center"><a
										href="<c:url value='edit/${item.supId}'/>">Edit</a> | <a
										href="<c:url value='delete/${item.supId}'/>">Delete</a></td>
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
								<img src="resources/css/images/map.jpg" height="200" width="225" />

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
