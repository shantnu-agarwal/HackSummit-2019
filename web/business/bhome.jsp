<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 24-08-2019
  Time: 12:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Business Locations</title>
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


Business Locations


<footer> &copy; Unified Rental Service - HackSummit Aaruush
    2019
</footer>


<script type="application/javascript" src="/js/jquery.min.js"></script>
<script type="application/javascript" src="/js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="/js/index.js"></script>
<script src="https://kit.fontawesome.com/8957a7e0dd.js"></script>


</body>
</html>
