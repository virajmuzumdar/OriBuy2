<html>
<%@ include file="header.jsp"%>
<head>
<title>Edit User</title>
</head>
<body>
	<h2>Edit User</h2>
	<div class="container">
	<form:form role="form" action="editeduser?id=${user.id}" modelAttribute="user" method="post">
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="fName" cssClass="cols-sm-12 control-label">First Name</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="fName" type="text" cssClass="form-control cols-sm-12 cols-lg-3"  placeholder="First Name"/>
					</div>
					<form:errors cssStyle="color:ff0000" path="fName"  ></form:errors>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="lName" cssClass="cols-sm-12 control-label">Last Name</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="lName" cssClass="form-control cols-sm-12 cols-lg-3"  placeholder="Last Name"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="number" cssClass="cols-sm-12 control-label">Mobile</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="number"  cssClass="form-control cols-sm-12 cols-lg-3"  placeholder="Mobile Number"/>
					</div>
					
				</div>
				<form:errors cssStyle="color:ff0000" path="number"  ></form:errors>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="userName" cssClass="cols-sm-12 control-label">Username</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="userName"  cssClass="form-control cols-sm-12 cols-lg-3"   placeholder="Username"/>
					</div>
				</div>
				<form:errors cssStyle="color:ff0000" path="userName"  ></form:errors>
			</div>
	 	</div>	
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="password" cssClass="cols-sm-12 control-label">Password</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="password" type="password" cssClass="form-control cols-sm-12 cols-lg-3"   placeholder="Password"/>
					</div>
				</div>
				<form:errors cssStyle="color:ff0000" path="password"  ></form:errors>
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
