<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOMEPAGE || MOVIE REVIEWER</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<title>Bootstrap Example</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">

body{
	background-color : #FFFDE6;
}

img.logo{
	width: 150px;
}

</style>
</head>
<body class="container">

<section>
	<div>
		<nav class="navbar mt-3">
		  <div class="container-fluid mx-5">
			<a class="navbar-brand" href="index.jsp">
			   <img class ="logo" src="imgs/logo.png" >
			</a>
		    <form class="d-flex" role="search">
		      <input class="form-control me-2" type="search" placeholder="Movie Name" aria-label="Search">
		      <button class="btn btn-outline-dark" type="submit">Search</button>
		    </form>
		  </div>
		</nav>
	</div>
</section>

<hr class ="container">

<section>
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
  </li>
</ul>

</section>

</body>
</html>