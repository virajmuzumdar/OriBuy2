<%@ include file="header.jsp" %>
<html>
	<head>
<title>Register</title>
</head>
	<body>
<br>
<div class="container">
  	
	<form:form role="form" action="submitted" method="post" commandName="user">
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="fName" cssClass="cols-sm-12 control-label">First Name</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="fName" cssClass="form-control cols-sm-12 cols-lg-3" placeholder="First Name"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="lName" cssClass="cols-sm-12 control-label">Last Name</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="lName" cssClass="form-control cols-sm-12 cols-lg-3"  placeholder="Last Name"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="number" cssClass="cols-sm-12 control-label">Number</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="number"  cssClass="form-control cols-sm-12 cols-lg-3"  placeholder="Number"/>
					</div>
					
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="userName" cssClass="cols-sm-12 control-label">Username</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="userName"  cssClass="form-control cols-sm-12 cols-lg-3"   placeholder="Username"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<form:label path="password" cssClass="cols-sm-12 control-label">Password</form:label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"></span>
							<form:input path="password" type="password" cssClass="form-control cols-sm-12 cols-lg-3"   placeholder="Password"/>
					</div>
				</div>
			</div>
	 	</div>
	 	 
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					 
					 <div class="input-group ">
<%-- 								<input type="text" name="${_csrf.parameterName}" value="${_csrf.token}" />  --%>
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" />
						
					</div>
				</div>
			</div>
	 	</div>
	</form:form>

</div>
<%@include file="footer.jsp" %>
	</body>
	</html>
	