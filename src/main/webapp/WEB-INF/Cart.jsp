<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>View Product</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<h2 align="center">View Products</h2>
	<div align="center">
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>Id</th>
			<th>Product Name</th>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<th>Quantity</th>
			</sec:authorize>
			<th>Price</th>
			<th>Category</th>
		</tr>
		<c:forEach var="product" items="${list}">
			<tr>
				
				<td>${product.productName}</td>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<td>
				<form>
				<input type="text" path:"proquantity"/>
				</form>
				</td>
				</sec:authorize>
				<td>${product.price}</td>
				<td>${product.category}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<br />
	<a href="NewProd">Add New Products</a>

	<%@include file="footer.jsp"%>
</body>
</html>
