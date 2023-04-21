<%@page import="MyDao.SelectAllData"%>
<%@page import="MyPojo.MoviesModelClass"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Critique It !</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- Favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="imgs/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="imgs/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="imgs/favicon/favicon-16x16.png">
<link rel="manifest" href="/site.webmanifest">

<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
  rel="stylesheet"
/>
</head>
<body class="container">

<jsp:include page="navbar.jsp"></jsp:include>
<h3><b><em>Movie of the Month : Avengers Infinity War</em></b></h3>

<hr>
<section>

	<div class="card mb-3">
	  	<div class="embed-responsive embed-responsive-21by9">
		  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/6ZfuNTqbHE8?autoplay=1&mute=1&loop=1" ></iframe>
		</div>
	  <div class="card-body">
	    <h5 class="card-title">Avengers Endgame</h5>
	    <p class="card-text">After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. 
	    With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.</p>
	    
	  </div>
	  	<div class="card-footer" style="text-align:center">
			<small class="text-muted" >Welcome to <b>CRITIQUE IT!</b> Your Review is Important:)</small>
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
	<div class="row row-cols-1 row-cols-md-3 g-4">
	<%
		ArrayList <MoviesModelClass> list = SelectAllData.getAllMovies();
	
		for(MoviesModelClass pojo : list){%>
		
		<div class="col">
			<div class="card h-100">
				<div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
				    <img src="imgs/movie_posters/<%=pojo.getImage()%>" class="img-fluid" alt="<%= pojo.getMovie_Name() %>"/>
				    <a href="review.jsp?id=<%=pojo.getMovie_Id()%>">
				      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
				    </a>
				  </div>
				<div class="card-body">
				<h5 class="card-title"><%= pojo.getMovie_Name() %></h5><hr>
			        <p class="card-text" style="text-align: left"><h5 class="text-muted"><%= pojo.getRatings()%>/5</h5></p><hr>
			        <p class="card-text" style="text-align: left"><%= pojo.getDescription() %></p>
			        <p class="card-text text-muted" style="text-align: left">
			        Director : <a href="https://www.google.com/search?client=firefox-b-d&q=<%= pojo.getDirector_Name() %>" style="text-decoration : none"><%= pojo.getDirector_Name() %></a>
			        </p>
				</div>
				
				<div class="card-footer">
				<small class="text-muted"><b>CRITIQUE IT! </b></small>
				</div>
			</div>
		</div>
		
	<%}%>
	</div>	
</div>
</section>
<hr>
<section>
<div class ="container">
	<a href="http://client.googiehost.com/aff.php?aff=11630">
	<img src="https://googiehost.com/banner/728_90_1.gif" style="height:90px;width:728px;" border="0" alt="Free Hosting" /></a>
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>


