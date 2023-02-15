<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOMEPAGE || MOVIE REVIEWER</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<title>Bootstrap Example</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="container">

<jsp:include page="navbar.jsp"></jsp:include>

<section>

	<div class="container text-center main">
      <div class="row">
      
        <div class="col">
	        <div class ="container text-center ">
	          <img
	            src="https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/80C64C0B63382CD3ED2653356125F275F63D036028A77D38DC3286AD851A6833/scale?width=506&aspectRatio=2.00&format=jpeg"
	            class="rounded mx-auto d-block img-fluid  poster"
	            alt="..."
	          />
	         </div>
        </div>
        
        <div class="col col-md-8 col-sm-12 col-12">
          <a><h2>IRONMAN</h2></a>
          <hr/>
          	<h3 class="border border-secondary" > Rating : 4.5 / 5</h3>
	          <p style="text-align: left">
	            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	             ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco 
	             laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
	             voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
	             proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
	          </p>
        </div>
     
      </div>
    </div>

</section>

<br>
<div class =" container text-center">
	<hr class="new5">
</div>


<section>

<div class ="container text-center">
<h3>Now Playing</h3><br>
	<div class="container row row-cols-1 row-cols-md-2 g-4">
	
	  <div class="col">
	    <div class="card mb-3 "  style="background-color: #f8f3eb;">
		  <div class="row g-0">
		    <div class="col-md-4">
		    <a href=review.jsp?moviename=>
		      <img src="https://m.media-amazon.com/images/I/71niXI3lxlL._SY679_.jpg"
		       class="img-fluid rounded-start" alt="...">
		    </a>
		    </div>
		    <div class="col-md-8">
		      <div class="card-body"">
		        <h5 class="card-title">Card title</h5>
		        <p class="card-text" style="text-align: left">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		        <p class="card-text" style="text-align: left"><small class="text-muted">Last updated 3 mins ago</small></p>
		      </div>
		    </div>
		  </div>
		</div>
      </div>
	  
	  <div class="col">
	    <div class="card mb-3" >
		  <div class="row g-0">
		    <div class="col-md-4">
		      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfAQlORY5zceggMbf-oGO7p4rVgxeb25zI5w&usqp=CAU"
		       class="img-fluid rounded-start" alt="...">
		    </div>
		    <div class="col-md-8 ">
		      <div class="card-body" >
		        <h5 class="card-title">Card title</h5>
		        <p class="card-text "style="text-align: left">This is a wider card with supporting text below as a natural 
		        This is a wider card with supporting text below as a lead-in to additional content. This content is a little bit longer.</p>
		      </div>
		    </div>
		  </div>
		</div>
      </div>
      
      <div class="col">
	    <div class="card mb-3">
		  <div class="row g-0">
		    <div class="col-md-4">
		      <img src="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/freedom-movie-poster-template-design-fab96754c0281ee48be754f63dac89fb.jpg?ts=1637036228"
		       class="img-fluid rounded-start" alt="...">
		    </div>
		    <div class="col-md-8">
		      <div class="card-body">
		        <h5 class="card-title">Card title</h5>
		        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		      </div>
		    </div>
		  </div>
		</div>
      </div>
	  
	  
	</div>
</div>

</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>