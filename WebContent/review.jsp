
<%@page import="MyDao.movieUpdate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="MyPojo.ReviewsModelClass"%>
<%@page import="MyDao.SelectAllData"%>
<%@page import="MyPojo.MoviesModelClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Critique It !</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="../style.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- Favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="WebContent/imgs/favicon/apple-touch-icon.pngg">
<link rel="icon" type="image/png" sizes="32x32" href="WebContent/imgs/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="WebContent/imgs/favicon/favicon-16x16.png">
<link rel="manifest" href="WebContent/site.webmanifest">

</head>
      <%
      
      String my_id = request.getParameter("id");
      System.out.print("Review page id string: "+my_id);
      
      int id = Integer.parseInt(my_id);
      System.out.print("Review page id int: "+id);
      
      movieUpdate.getReviewAvg(id);
      
      MoviesModelClass pojo = SelectAllData.getMovieDetailsById(id);
	  
      %>
<body class="container">

<jsp:include page="navbar.jsp"></jsp:include>

<section>

	<div class="container row row-cols-1 row-cols-md-2 g-4">
	
		<div class="col">
			<div class="card h-100">
				<div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
				    <div class="embed-responsive embed-responsive-16by9">
					  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/<%=pojo.getTrailerID()%>?autoplay=1&loop=1&mute=1" ></iframe>
					</div>
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
				<small class="text-muted">Welcome to <b>CRITIQUE IT!</b> Your Review is Important:)</small>
				</div>
			</div>
		 </div>
	      
	      <div class="col">
			<div class="card h-100">
				<div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
				    <img src="imgs/movie_posters/<%=pojo.getImage()%>" class="img-fluid" alt="<%= pojo.getMovie_Name() %>"/>
				    <a href="review.jsp?id=<%=pojo.getMovie_Id()%>">
				      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
				    </a>
				  </div>
				<div class="card-body">
				 <h5>More Details </h5><hr>
			    	<p class="card-text text-muted" style="text-align: left">
			        <b>Cast :</b>
			        <a href="https://www.google.com/search?client=firefox-b-d&q=<%= pojo.getActor_Name()%>" style="text-decoration : none"><%= pojo.getActor_Name()%></a> ||
			        <a href="https://www.google.com/search?client=firefox-b-d&q=<%= pojo.getSupporting_Actor()%>" style="text-decoration : none"><%= pojo.getSupporting_Actor()%></a> ||
			        <a href="https://www.google.com/search?client=firefox-b-d&q=<%= pojo.getActress_name()%>" style="text-decoration : none"><%= pojo.getActress_name()%></a>
			        <hr>
			        <p class="card-text text-muted" style="text-align: left">
			        <b>Genre : </b><%= pojo.getGenre()%>
			        </p>
			        <hr>
			        <p class="card-text text-muted" style="text-align: left">
			        <b>Release Date :</b> <%= pojo.getRelease_Date()%>
			        </p>
			  </div>
			  	<div class="card-footer">
					<small class="text-muted" style="text-align: center"><b>CRITIQUE IT!</b></small>
				</div>
		 </div>
	      
	      
	      
	</div>

</section>

<hr>
<div class="">
	<h4 style="color: #7D6608 ;" align="center">Review and share your thoughts about <%=pojo.getMovie_Name() %></h4>
</div>
<hr>
<section>
<form class="row g-3" action="insertReview.jsp" method="post" >
	
	
	  <input type="hidden" name="movie_name" value="<%=pojo.getMovie_Name()%>" class="form-control" placeholder="Movie Name" readonly>
	  <input type="hidden" name="movie_Id" value="<%=id%>" class="form-control" placeholder="Movie ID" readonly>
	  
	  <div class="col-md-12">
	    <input type="text" class="form-control" name="userName"  placeholder="Your Name" required>
	  </div>

	  <div class="col-md-4">
	  <label >&nbsp;Rate movie (out of 5)</label>
	  	<br>
	    	&nbsp;<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="userRating" id="inlineCheckbox1" value="1">
		  <label class="form-check-label" for="inlineCheckbox1">1</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="userRating" id="inlineCheckbox2" value="2">
		  <label class="form-check-label" for="inlineCheckbox2">2</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="userRating" id="inlineCheckbox3" value="3">
		  <label class="form-check-label" for="inlineCheckbox3">3</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="userRating" id="inlineCheckbox3" value="4">
		  <label class="form-check-label" for="inlineCheckbox3">4</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="userRating" id="inlineCheckbox3" value="5">
		  <label class="form-check-label" for="inlineCheckbox3">5</label>
		</div>
		
	  </div>
	  
	  <div class="col-md-12">
	    <input type="text" class="form-control" name="reviewHeadline"  placeholder="Write a headline for your review here" required>
	  </div>
	  
	  <div class="input-group">
		 <span class="input-group-text">Write your review here</span>
		 <textarea class="form-control" name="userReview"  required></textarea>
	  </div>
	   
	 <br>
	 
	  <div class="col-12 " align="center">
	    <input type="submit" value="Submit Review" class="btn btn-outline-secondary"></input>
	  </div>
	  
	</form>
</section>

<br>
<div class =" text-center">
	<hr class="new5">
</div>

<!-- Displaying Reviews  -->


<section>
	<div class="container row row-cols-1 row-cols-md-2 g-4">
	<% ArrayList <ReviewsModelClass> list = SelectAllData.getReviewsById(id);
	    		
	 for(ReviewsModelClass ReviewPojo : list ){ %>
		 
	  
	      <div class="col">
			<div class="card h-100">
				<div class="card-body">
				<h5><%=ReviewPojo.getReviewer_Name()%> </h5> (<%=ReviewPojo.getUser_Rating()%>/5)<hr>
			    
			    <p class="card-text " style="text-align: left">
			        <b>Movie Name : <%=ReviewPojo.getMovie_Name()%></b>
			        </p>
			        <hr>
			        
			        <p class="card-text" style="text-align: left">
			        <b>Review Headline : </b><%=ReviewPojo.getReview_Headline()%>
			        </p>
			       <hr>
			    
			    	<p class="card-text" style="text-align: left">
			        <b>User Review : </b><%=ReviewPojo.getReview()%>
			        </p>
			       <hr>
				</div>
				
				<div class="card-footer">
				<small class="text-muted"><b>CRITIQUE IT! </b></small>
				</div>
			</div>
		</div>
	      
	 <% }
	 %>
	 
	 
	
</div>
	

</section>

<jsp:include page="footer.jsp"></jsp:include>
		
</body>
</html>