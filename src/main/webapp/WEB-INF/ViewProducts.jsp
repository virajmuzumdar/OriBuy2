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
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<th>Id</th>
		</sec:authorize>
			<th>Product Name</th>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<th>Quantity</th>
			</sec:authorize>
			<th>Price</th>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<th>Description</th>
			</sec:authorize>
			<th>Category</th>
			<th>View</th>
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<th>Edit</th>
			<th>Delete</th>
		</sec:authorize>
		</tr>
		<c:forEach var="product" items="${list}">
			<tr>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<td>${product.id}</td>
			</sec:authorize>
				<td>${product.productName}</td>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<td>${product.quantity}</td>
				</sec:authorize>
				<td>${product.price}</td>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<td>${product.description}</td>
				</sec:authorize>
				<td>${product.category}</td>
				<td><a href="viewproduct?id=${product.id}">View</a></td>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<td><a href="editproduct?id=${product.id}">Edit</a></td>
				<td><a href="deleteproduct?id=${product.id}">Delete</a></td>
			</sec:authorize>
			</tr>
		</c:forEach>
	</table>
	</div>
	<br />
	<a href="NewProd">Add New Products</a>

	<%@include file="footer.jsp"%>
</body>
</html>
