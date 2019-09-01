<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 21-08-2019
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HackSummit | Aaruush 2019</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/index.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<%--HEADER IMPORT FROM TEMPLATE DIRECTORY--%>
<%@ include file="/template/header.jsp" %>

<section class="sec1">
    <div class="bg"></div>
    <div class="container">
        <h1 class="cover-heading" style="width: 100%">Information About The Project
            Space</h1>
            <h4></h4>
            <h2 class="heading">Technologies Used</h2>
            <p>
                <a href="#sec2" class="btn btn-lg btn-outline-success" style="color: black">Find Spaces</a>
                <a href="#sec3" class="btn btn-lg btn-outline-success" style="color: black">List Spaces</a>
            </p>

    </div>
</section>
<section id="sec2">
    <div class="bg"></div>
    <div class="container">
        <h2 class="text-white">Choose a type and press search!</h2>
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Residential Spaces</h5>
                        <div class="card-img"><i class="fa fa-home" aria-hidden="true" style="font-size: 10rem;"></i>
                        </div>
                        <p class="card-text">Find the perfect house in the city.</p>
                        <a href="ResidentialHome" class="btn btn-primary">Find More</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Business Locations</h5>
                        <div class="card-img"><i class="fa fa-building" aria-hidden="true"
                                                 style="font-size: 10rem; display: block; margin: auto"></i></div>
                        <p class="card-text">Boost your business with the best location to set shop!</p>
                        <a href="BusinessHome" class="btn btn-primary">Find More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="sec3">
    <div class="bg"></div>
    <div class="container">
        <h2>Some T&C here.</h2>


        <form action="">
            <ul class="list-group list-group-flush" style="margin: 2rem; color: #0b2e13">
                <li class="list-group-item bg-transparent">I can confirm that the space I am putting out for rent is owned directly by me and has not been rented/leased out to me.</li>
                <li class="list-group-item bg-transparent">The place is in perfect physical condition where I'd personally live and work, if asked to.</li>
                <li class="list-group-item bg-transparent">They are no restrictions on the said space regarding renting and leasing.</li>
                <li class="list-group-item bg-transparent">I understand that if any information that I provide is found to be false, I will be permanently banned from this service.</li>
            </ul>
            <p><input type="checkbox" id="checkbox" style="font-size: 3rem;" required> I agree to the above conditions.
            </p>
            <a href="listing/form.jsp" class="btn btn-primary">Continue to list my space.</a>
        </form>


    </div>
</section>

<%@ include file="/template/footer.jsp" %>


<script type="application/javascript" src="js/jquery.min.js"></script>
<script type="application/javascript" src="js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="js/index.js"></script>
<script type="application/javascript" src="js/fontawesome.js"></script>


</body>
</html>