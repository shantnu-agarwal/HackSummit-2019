<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 24-08-2019
  Time: 12:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Residential Spaces</title>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HackSummit | Aaruush 2019</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="residential/css/rhome.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<%--HEADER IMPORT FROM TEMPLATE DIRECTORY--%>
<%@ include file="/template/header.jsp" %>

<div class="container">
    <h1>Residential Choices</h1>
    <h2>Filter here</h2>
    <select>
        <option value="">size</option>
        <option value="">room</option>
    </select>

    <h2>or browse the options</h2>
    <div class="row">
        <% int a=0;
        while(a<3){
          %>
        <div class="card" style="width: 18rem;">
            <img src="..." class="card-img-top" alt="Missing Image">
            <div class="card-body">
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's content.</p>
            </div>
        </div>
        <%
        a++;
        }%>

    </div>


</div>

<%@ include file="/template/footer.jsp" %>

<script type="application/javascript" src="js/jquery.min.js"></script>
<script type="application/javascript" src="js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="js/index.js"></script>
<script type="application/javascript" src="https://kit.fontawesome.com/8957a7e0dd.js"></script>

</body>
</html>
