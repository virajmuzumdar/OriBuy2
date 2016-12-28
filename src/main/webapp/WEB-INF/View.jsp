<!DOCTYPE html>
<%@page isELIgnored="false" %>
<html>
	
	<head>
<title>${product.productName}</title>
</head>
	<body>
	<%@ include file="header.jsp" %>
<br>
<div class="section" style="padding-bottom:250px">
            <div class="container-fluid">
                <div class="row">
                <div class="col-md-6">
                <img src="${pageContext.request.contextPath}/resources/pictures/${product.id}.jpg" width="350px" height="350px">
                </div>
                    <div class="col-md-6">
                        <div class="section">
                            <div>
                                <h2>${product.productName}</h2>
                                <h4>Price: ${product.price}</h4>
                                <h4>Stock: ${product.quantity}</h4>
                                <h4>Category:${product.category}</h4>
                                <h4>Description: ${product.description}</h4>
                                <sec:authorize access="isAnonymous()">
                                <p>You must login to add the product to the cart!</p>
                                </sec:authorize>
                                <sec:authorize access="isAuthenticated()">
                                <form:form action="${pageContext.request.contextPath}/addCart?id=${product.id}&name=${username}">
                                <button type = "submit" class ="btn btn-info">Add To Cart</button>
                                </form:form>
                                </sec:authorize>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<%@include file="footer.jsp" %>
	</body>
	</html>
	