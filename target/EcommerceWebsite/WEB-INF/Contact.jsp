<!DOCTYPE html>

<html>
	<%@ include file="header.jsp" %>
	<head>
<title>Contact Us</title>
</head>
	<body>
<br>
<div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section" style="padding-bottom:150px">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
									<form class="form-horizontal" action="sendcontact" method="post">
                                            <div class="form-group">
                                                <div class="col-sm-2">
                                                    <label class="control-label">Name</label>
                                                </div>
                                                <div class="col-sm-10">
                                                    <input type="text" name="cname" placeholder="Name" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-2">
                                                    <label class="control-label">Mobile</label>
                                                </div>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" name="cnumber" placeholder="Mobile">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-2">
                                                    <label class="control-label">Email</label>
                                                </div>
                                                <div class="col-sm-10">
                                                    <input type="email" class="form-control" name="cemail" placeholder="Email">
                                                </div>
                                            </div>                                            
                                            <p>We shall contact you as soon as possible.<p>                                           
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <button type="submit" class="btn btn-default">Submit</button>
                                                </div>
                                            </div>
                                        </form>
									</div>
							</div>
						</div>
					</div>
				</div>
		</div>                                         
</div>
<%@include file="footer.jsp" %>
	</body>
	</html>
	