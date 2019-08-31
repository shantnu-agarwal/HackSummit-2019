<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 31-08-2019
  Time: 10:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HackSummit | Aaruush 2019</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="css/complete.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<%@ include file="../template/header.jsp" %>

<div class="container" style="width: 100%">
    <h1>Success!</h1>
    <h4>Your entry has been successfully received! It will be updated in real time listing page once the integration is
        complete.</h4>
    <a href="http://localhost:8080/HackSummit_war_exploded/" class="btn btn-primary">Continue Exploring!</a>
</div>


<%@ include file="../template/footer.jsp" %>
<script type="application/javascript" src="../js/jquery.min.js"></script>
<script type="application/javascript" src="../js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="../js/index.js"></script>
<script type="application/javascript" src="../js/fontawesome.js"></script>

</body>
</html>
