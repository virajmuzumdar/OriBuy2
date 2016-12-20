<!DOCTYPE html>

<html>
<%@ include file="header.jsp" %>
<head>
<title>Home</title>
<style>
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
</style>
</head>
	<body>
${message}
<br>
<div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="${pageContext.request.contextPath}/resources/images/c1.jpg" alt="Image 1"/>
      <div class="carousel-caption">
        <h3>Origami!!Because,Why Not?</h3>
      </div>
    </div>
	<div class="item">
      <img src="${pageContext.request.contextPath}/resources/images/c2.jpg" alt="Image 2"/>
      <div class="carousel-caption">
        <h3>Buy Ready-made</h3>
        <p>Buy from a vast range of ready-made products</p>
		</div>
    </div>
	<div class="item">
      <img src="${pageContext.request.contextPath}/resources/images/c3.jpg" alt="Image 3"/>
      <div class="carousel-caption">
        <h3>Starter Kits</h3>
        <p>Create Your Own Piece Of Art</p>
      </div>
    </div>
	</div>
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
	</div>
	<hr>
	<div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <h1 class="text-center">Featured Content</h1>
                        <p></p>
                        <h4 class="text-center">Origami Exhibition</h4>
                        <p></p>
                        <h3 class="text-center">The World Origami Exhibition 2014....Featuring Masterpieces!! </h3>
                    </div>
                    <div class="col-md-6">
                        <iframe width="560" height="315" src="${pageContext.request.contextPath}/resources/images/movie.mp4" type="video/mp4" frameborder="0" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row" align="center">
    <div class="col-md-4">
      <div class="img-circle">
        <a href="#">
          <img src="${pageContext.request.contextPath}/resources/images/s1.jpg" class="img-circle" alt="Pulpit Rock" height='300' width='300'>
        </a>
      </div>
      <div class="caption">
          <p>The Fox</p>
        </div>
    </div>
    <div class="col-md-4">
      <div class="img-circle">
        <a href="#">
          <img src="${pageContext.request.contextPath}/resources/images/s2.jpg" class="img-circle" alt="Moustiers Sainte Marie" height='300' width='300'>
        </a>
      </div>
      <div class="caption">
          <p>The Scorpion</p>
        </div>
    </div>
    <div class="col-md-4">
      <div class="img-circle">
        <a href="#">
          <img src="${pageContext.request.contextPath}/resources/images/s3.jpg" class="img-circle" alt="Cinque Terre" height='300' width='300'>
        </a>
      </div>
      <div class="caption">
          <p>The Racoon</p>
        </div>
    </div>
  </div>

<%@include file="footer.jsp" %>
	</body>
	</html>
	