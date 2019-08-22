<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 21-08-2019
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>HackSummit | Aaruush 2019</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/index.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">img</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active"><a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
            </a></li>
            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/read/">Support </a></li>
            <li class="nav-item"><a class="nav-link" href="#">FAQ </a></li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search"
                   placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
<button onclick="topFunction()" id="scrollBtn" title="Go to top">
    <i class="fas fa-arrow-up"></i>
</button>


<section class="sec1">
    <div class="container">
        <h1 class="cover-heading mx-auto" style="width: 100%">Find Your
            Space</h1>
        <p class="lead">Safety and Security, guaranteed.</p>
        <h1 class="heading">This is HackSummit</h1>
        <p class="lead">
            <a href="#sec2" class="btn btn-lg btn-secondary">Find Spaces</a> <a
                href="#sec3" class="btn btn-lg btn-secondary">List Spaces </a>
        </p>
        <div></div>
    </div>

</section>
<section id="sec2">
    <div class="container">
        <p class="lead">Choose a type and press search!</p>
    </div>
</section>
<section id="sec3">
    <div class="container">
        <p class="lead">Some T&C here.</p>
    </div>
</section>

<footer> &copy; Unified Rental Service - HackSummit Aaruush
    2019
</footer>


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script src="https://kit.fontawesome.com/8957a7e0dd.js"></script>


</body>
</html>