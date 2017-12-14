<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Premium Series
Description: A three-column, fixed-width blog design.
Version    : 1.0
Released   : 20090303

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Premium Series by Free CSS Templates</title>
<meta name="keywords" content="" />
<meta name="Premium Series" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<%HttpSession ses=request.getSession(); 
	String name=(String)ses.getAttribute("adminname");
%>
<!-- start header -->
<div id="header">
	<div id="logo">
		<i><h1><a href="#"><span>Milk</span>Dairy</a></h1></i>
		<p>Designed By SCTS Group</p>
	</div>
	<div id="menu">
		<ul id="main">
			<li><a href="Home.jsp">Home</a></li>
			<li><a href="Incomming.jsp">Suppliers</a></li>
			<li><a href="Outgoing.jsp">Buyers</a></li>
			<li><a href="Product.jsp">Products</a></li>
			<li><a href="About.jsp">About us</a></li>
			<li><a href="Contactus.jsp">Contact us</a></li>
				<li ><a href="AdminViewDetails.jsp"><%=name%> profile</a></li>
				<li><a href="AdminReportForAll.jsp">Report</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
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
					   <li><a href="AdminRegistration.jsp">Admin</a></li>
						<li><a href="SupplieRegistration.jsp">Supplier</a></li>
						<li><a href="CustomerRegistration.jsp">Customer</a></li>
						
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
						<li class="current_page_item"><a href="#">Ghee</a></li>
					</ul>
				</li>
		
			</ul>
		</div>
		<!-- start content -->
		<div id="content">
			<div>
					
					
					<CENTER>
<H2>GHEE</H2><IMG border=0 alt="" 
src="images/ghee.jpg" width=400 
height=200> 
<P><FONT color=#33cc00 size=3>According to ancient Ayurveda cow ghee is full of 
essential<BR>nutrients, fatty acids, antibacterial, anti fungal, 
<BR>anti-oxidants and antiviral properties.<BR>It is cool, sweet and full of 
saturated fat. </P></CENTER>
					
					
					
			</div>			
		</div>
		<!-- end content -->
		<!-- start sidebars -->
		<div id="sidebar2" class="sidebar">
			<ul>
				<li>
					<form id="searchform" method="get" action="#">
						<div>
							<h2>Site Map</h2>
							<img src="images/Awesome.jpg"  height="200" width="225" />
							
						</div>
					</form>
				</li>
				
				<li>
					<div>
					<u><h2>Shital Sondakar:</u></br></h2>
					<hr><h3>ssondakar@gmail.com</hr></br>
					9902389861</br></h3></br></br>
					
					<u><h2>Akshay Jadhav:</u></br></h2>
					<hr><h3>akshayjadhav19710@gmail.com</hr></br>
					9561177971</br></h3></br></br>
					
					<u><h2>Prashant Chitte:</u></br></h2>
					<hr><h3>prashant201291@gmail.com</hr></br>
					9766905856</br></h3></br></br>
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
	<p class="copyright">&copy;&nbsp;&nbsp;2009 All Rights Reserved &nbsp;&bull;&nbsp; Design by <a href="http://www.freecsstemplates.org/">SCTS Group</a>.</p>
	<p class="link"><a href="#">Privacy Policy</a>&nbsp;&#8226;&nbsp;<a href="#">Terms of Use</a></p>
</div>
</html>
