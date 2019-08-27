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
<%--HEADER IMPORT FROM TEMPLATE DIRECTORY--%>
<%@ include file="/template/header.jsp" %>
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
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Residential Spaces</h5>
                        <div class="card-img"><i class="fa fa-home" aria-hidden="true" style="font-size: 10rem;"></i>
                        </div>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <a href="ResidentialHome" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Business Locations</h5>
                        <div class="card-img"><i class="fa fa-building" aria-hidden="true"
                                                 style="font-size: 10rem; display: block; margin: auto"></i></div>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <a href="BusinessHome" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
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