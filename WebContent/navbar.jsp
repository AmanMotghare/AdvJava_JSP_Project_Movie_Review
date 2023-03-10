<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="MyDao.SelectAllData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navbar</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<hr>
<section>
	<div>
		<nav class="navbar mt-3">
		  <div class="container-fluid mx-5">
			<a class="navbar-brand" href="index.jsp">
			   <img class ="logo" src="imgs/logo.png" >
			</a>
			
		    <form class="d-flex" method ="post" action="searchIndex.jsp">
		      <input class="form-control me-2" name= "search"  placeholder="Movie / TV-Series" >
		      <button class="btn btn-outline-dark" type="submit">Search</button>
		    </form>
		    
		    <div class="d-flex navbar-brand ">
    			<a class=" btn btn-outline-secondary" href="loginAdmin.jsp">LOGIN</a>&nbsp;&nbsp;&nbsp;
    			<a class="btn btn-outline-secondary" href="logoutAdmin.jsp">LOGOUT</a>
  			</div>
		  </div>
		</nav>
	</div>
</section>
<hr class ="container">

<section>
<ul class="nav justify-content-center ">

  <li class="nav-item ">
    <a class="nav-link menu" href="#">Great Movies</a>
  </li>

  <li class="nav-item">
    <a class="nav-link menu" href="profileAdmin.jsp">Admin Profile</a>
  </li>
  
  <li class="nav-item">
    <a class="nav-link menu" href="#">TV / Streaming Reviews</a>
  </li>

</ul>
</section>

 <hr class ="container">
</body>
</html>