<%@page import="MyDao.SelectAllData"%>
<%@page import="MyPojo.AdminModelClass"%>
<%@page import="MyDao.SelectAllData"%>
<%@page import="MyPojo.MoviesModelClass"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Critique It ! || Admin Page</title>
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

<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
String Email = (String)session.getAttribute("email");
String Password = (String)session.getAttribute("password");

if(Email!=null && Password!=null){
	
	AdminModelClass pojo1 = SelectAllData.getAdminDetails(Email, Password);%>
	
	<body class="container">
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="">
	<div class="">
		<h4 style="color: #7D6608 ;" align="center"><b>Welcome <%=pojo1.getName() %>, Hope you are doing Good !</b></h4>
	</div><hr>
	
	<form class="row g-3" action="insertMovies.jsp" method="post" >
	
	  <div class="col-md-3">
	  <label>&nbsp;Name of a Movie</label>
	    <input type="text" name="movie_name" class="form-control" placeholder="Movie Name" required>
	  </div>
	  
	  <div class="col-md-3">
	  <label>&nbsp;Director Name</label>
	    <input type="text" name="director_name" class="form-control"  placeholder="Directed By" required>
	  </div>
	  
	  <div class="col-md-3">
	  <label>&nbsp;Select Genre</label>
	    <select class="form-select" name="genre"required>
	      <option selected>Genre</option>
	      <option value="Action">Action</option>
	      <option value="Drama">Drama</option>
	      <option value="Horror">Horror</option>
	      <option value="Thriller">Thriller</option>
	      <option value="Romance">Romance</option>
	      <option value="Adventure">Adventure</option>
	      <option value="Superhero">Superhero</option>
	      <option value="Science fiction">Science fiction</option>
	    </select>
	  </div>
	  
	   <div class="col-md-3">
	  	<label>&nbsp;Release Date</label>
	    <input type="date" name="release_date" class="form-control" placeholder="Release Date " required>
	  </div>
	  
	  <div class="input-group">
		 <span class="input-group-text">Movie Description</span>
		 <textarea class="form-control" name="description"  aria-label="With textarea" required></textarea>
	  </div>
	  
	  
	  <div class="col-md-4">
	    <input type="text" class="form-control" name="actor"  placeholder="Actor Name" required>
	  </div>
	  
	  <div class="col-md-4">
	    <input type="text" class="form-control" name="actress"  placeholder="Actress Name" required>
	  </div>
	  
	  <div class="col-md-4">
	    <input type="text" class="form-control" name="support_actor"  placeholder="Supporting Actor Name" required>
	  </div>
	   
	 <br>
	 
	  <div class="col-12 " align="center">
	    <input type="submit" value="Done" class="btn btn-outline-secondary"></input>
	  </div>
	  
	</form>
</div>
<div class =" container text-center">
	<hr class="new5">
</div>
<section>

<div class =" text-center">
	<h3 class = "  border rounded">Movies List</h3><br>
	<div class=" row row-cols-1 row-cols-md-2 g-4">
		
		
	<%
		ArrayList <MoviesModelClass> list = SelectAllData.getAllMovies();
	
		for(MoviesModelClass pojo : list){%>
			
		<div class="col">
		    <div class="card mb-3 moviecard"  >
			  <div class="row g-0">
			    <div class="col-md-4">
				    <a href=review.jsp?id=<%=pojo.getMovie_Id() %> style="text-decoration : none">
				      <img src="imgs/movie_posters/<%=pojo.getImage()%>"
				       class="card-img-top img-fluid rounded-start" alt="<%= pojo.getMovie_Name() %>">
				    </a>
			    </div>
			    <div class="col-md-8">
			      <div class="card-body">
			        <h5 class="card-title"><%= pojo.getMovie_Name() %></h5><hr>
			        <p class="card-text" style="text-align: left"><h5 class="text-muted"><%= pojo.getRatings()%>/5</h5></p><hr>
			        <p class="card-text" style="text-align: left"><%= pojo.getDescription() %></p><hr>
			        <div class="card-text d-flex navbar-brand ">
		    			<a class=" btn btn-secondary" href="editMovie.jsp?id=<%=pojo.getMovie_Id() %>">Edit</a>
		    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
		    			<a class="btn btn-dark" href="deleteMovie.jsp?id=<%=pojo.getMovie_Id() %>">Delete</a>
		  			</div>  		
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
	
<%}
else{
	response.sendRedirect("loginAdmin.jsp");
	
}
%>

