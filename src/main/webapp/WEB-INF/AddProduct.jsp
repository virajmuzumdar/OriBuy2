<html>
<%@ include file="header.jsp"%>
<head>
<title>Add Product</title>
</head>
<body>
	<h2>Add Product</h2>
	<div class="container">
  	
	<form:form role="form" action="saveproduct" method="post" modelAttribute="product" enctype="multipart/form-data">
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="productName" cssClass="cols-sm-12 control-label">Product Name</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="productName" cssClass="form-control cols-sm-12 cols-lg-3" placeholder="Product Name"/>
					</div>
<%-- 					<form:errors  Style="color:ff0000" path="productName"  ></form:errors> --%>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="description" cssClass="cols-sm-12 control-label">Description</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="description" cssClass="form-control cols-sm-12 cols-lg-3"  placeholder="Product Description"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="price" cssClass="cols-sm-12 control-label">Price</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="price"  cssClass="form-control cols-sm-12 cols-lg-3"  placeholder="Product Price"/>
					</div>
					
				</div>
<%-- 				<form:errors cssStyle="color:ff0000" path="price"  ></form:errors> --%>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="quantity" cssClass="cols-sm-12 control-label">Quantity</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="quantity"  cssClass="form-control cols-sm-12 cols-lg-3"   placeholder="Product Quantity"/>
					</div>
				</div>
<%-- 				<form:errors cssStyle="color:ff0000" path="quantity"  ></form:errors> --%>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="category" cssClass="cols-sm-12 control-label">Category</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="category"  cssClass="form-control cols-sm-12 cols-lg-3"   placeholder="Product Category"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="photo" cssClass="cols-sm-12 control-label">Add Product photo</form:label>
					 <form:input type="file" path="photo"/>
				</div>
			</div>
	 	</div>
	 	 
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					 
					 <div class="input-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" />
						
					</div>
				</div>
			</div>
	 	</div>
	</form:form>

</div>
	 	

	<%@include file="footer.jsp"%>
</body>
</html>
