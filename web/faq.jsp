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
        <h1 class="cover-heading" style="width: 100%">Information About The Project</h1>
            <h3 class="heading" style="margin: 2rem;">Technologies Used</h3>
            <p style="margin: 2rem;">
                <a href="#sec2" class="btn btn-lg btn-outline-success" style="color: black">Java Enterprise</a>
            </p>
        <p style="margin: 2rem;">
                <a href="#sec3" class="btn btn-lg btn-outline-success" style="color: black">Azure Cloud / Database</a>
        </p>
        <p style="margin: 2rem;">    <a href="#sec2" class="btn btn-lg btn-outline-success" style="color: black">Tomcat Server</a>
        </p>
        <p style="margin: 2rem;">
                <a href="#sec3" class="btn btn-lg btn-outline-success" style="color: black">Java Servlets / Spring Framework</a>
        </p>
        <p style="margin: 2rem;">
                <a href="#sec2" class="btn btn-lg btn-outline-success" style="color: black">R Script</a>
            </p>
    </div>
</section>


<%@ include file="/template/footer.jsp" %>


<script type="application/javascript" src="js/jquery.min.js"></script>
<script type="application/javascript" src="js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="js/index.js"></script>
<script type="application/javascript" src="js/fontawesome.js"></script>


</body>
</html>