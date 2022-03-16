<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	
		if(session.getAttribute("username") == null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">Welcome Page</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <form class="nav justify-content-end" action="Logout">
			<input class="btn btn-primary my-3" type="submit" value="Logout">
		</form>
	  </div>
	</nav>
	<div class="container my-3">
	
		<h2 class="mb-3">Welcome ${username}!</h2>
		
		<ul>
			<li> <a class="my-6" href="videos.jsp">Videos here</a> </li>
			<br>
			<li> <a class="my-3" href="recommendations.jsp">Music Recommendations for you</a> </li>
		</ul>
	</div>>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>