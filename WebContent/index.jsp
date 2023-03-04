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
<!-- Favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="imgs/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="imgs/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="imgs/favicon/favicon-16x16.png">
<link rel="manifest" href="/site.webmanifest">

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
		
		
	<%
		ArrayList <MoviesModelClass> list = SelectAllData.getAllMovies();
	
		for(MoviesModelClass pojo : list){%>
			
			<div class="col">
		    <div class="card mb-3 moviecard" >
			  <div class="row g-0">
			    <div class="col-md-4">
				    <a href=review.jsp?id=<%=pojo.getMovie_Id()%> style="text-decoration : none">
				      <img src="imgs/movie_posters/<%=pojo.getImage()%>"
				       class="card-img-top img-fluid rounded-start" alt="<%= pojo.getMovie_Name() %>">
				    </a>
			    </div>
			    <div class="col-md-8">
			      <div class="card-body">
			        <h5 class="card-title"><%= pojo.getMovie_Name() %></h5><hr>
			        <p class="card-text" style="text-align: left"><h5 class="text-muted"><%= pojo.getRatings()%>/5</h5></p><hr>
			        <p class="card-text" style="text-align: left"><%= pojo.getDescription() %></p>
			        <p class="card-text text-muted" style="text-align: left">
			        Director : <a href="https://www.google.com/search?client=firefox-b-d&q=<%= pojo.getDirector_Name() %>" style="text-decoration : none"><%= pojo.getDirector_Name() %></a>
			        </p>
			        <hr>
			        <p class="card-text" style="text-align: center">
			        <b>CRITIQUE IT! </b>
			        </p><hr>
			      </div>
			      
			    </div>
			  </div>
			</div>
	      </div>
		<%}%>	

	</div>
</div>

</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>