<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


Printing list here...! ${listss}
<c:if test="${!empty listss}">
	<table class="tg">
							<tr>
								<th width="20">Suplier ID</th>
								<th width="120">Suplier Name</th>
								<th width="120">Suplier email</th>
								<th width="120">Suplier Gender</th>
								<th width="120">Suplier Mobile</th>
								<th width="120">Suplier address</th>
							</tr>
							<c:forEach items="${listss}" var="item">
								<tr>
									<td>${item.supId}</td>
									<td>${item.supName}</td>
									<td>${item.email}</td>
									<td>${item.gender}</td>
									<td>${item.mobile}</td>
									<td>${item.address}</td>
								</tr>
							</c:forEach>
						</table>

</c:if>


</body>
</html>