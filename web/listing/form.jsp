<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 31-08-2019
  Time: 02:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HackSummit | Aaruush 2019</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="css/form.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<%@ include file="/template/header.jsp" %>

<div class="container">
    <form action="#!">
        <div class="form-group">
            <label for="UIDAI">Aadhaar Number</label>
            <input type="text" class="form-control" id="UIDAI"
                   placeholder="Your 12-digit Aadhaar Number">
            <small class="form-text text-muted">We'll never share your Aadhaar details with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="InputPhoneNumber">Mobile Number</label>
            <input type="number" class="form-control" id="InputPhoneNumber"
                   placeholder="9876543210">
        </div>
        <div class="form-group">
            <label for="InputName">Full Name</label>
            <input type="text" class="form-control" id="InputName"
                   placeholder="Your Full Name">
        </div>
        <div class="form-group">
            <label for="InputName">Email address</label>
            <input type="text" class="form-control" id="InputEmail"
                   placeholder="email@example.com">
        </div>
        <div class="form-group">
            <label for="InputDOB">Date of Birth</label>
            <input type="date" class="form-control" id="InputDOB">
        </div>

        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">All details are true to my knowledge</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<%@ include file="/template/footer.jsp" %>


<script type="application/javascript" src="../js/jquery.min.js"></script>
<script type="application/javascript" src="../js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="../js/index.js"></script>
<script type="application/javascript" src="../js/fontawesome.js"></script>

<script type="application/javascript" src="js/form.js"></script>


</body>
</html>
