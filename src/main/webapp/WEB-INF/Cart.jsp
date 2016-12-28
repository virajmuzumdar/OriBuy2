<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>View Product</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<h2 align="center">Cart</h2>
	<div align="center">
	<div>
	</div>
	<table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${cart}" var="cart">
                    <tr>
                        <td>${cart.pname}</td>
                        <td>${cart.pprice}</td>
                        <td>
						<form action="updateCart" method="get">
			             <input type="hidden" name="cid" value="${cart.cid}">
			             <input type="hidden" name="name" value="${username}">
			             <input type="text" name="quantity"value="${cart.quantity}" pattern="[1-9]{1}" title="Enter Quantity">
			             <input type="submit" value="Update">
			         	</form>
						</td>
                        <td>${cart.pprice*cart.quantity}</td>
                        <td><a href="${pageContext.request.contextPath}/deleteCart?id=${cart.cid}&name=${cart.uid}" class="label label-danger"><span class="glyphicon glyphicon-remove"></span>remove</a></td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>${Total}</th>
                        <th><a href="chaalu" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a></th>
                    </tr>
                </table>
	</div>
	<br />
	<a href="Products" class="btn btn-default">Continue Shopping</a>

	<%@include file="footer.jsp"%>
</body>
</html>
