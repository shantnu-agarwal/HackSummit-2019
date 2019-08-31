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
    <form id="details" action="submitdetails" method="post">
        <%-------------DIVISION 1 STARTS HERE--------------%>
        <div class="visibleform" id="div1">
            <div class="form-group">
                <label for="UIDAI">Aadhaar Number</label>
                <input type="number" class="form-control" id="UIDAI"
                       placeholder="Your 12-digit Aadhaar Number" name="InputUIDAI">
                <small class="form-text text-muted">We'll never share your Aadhaar details with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="InputPhoneNumber">Mobile Number</label>
                <input type="number" class="form-control" id="InputPhoneNumber" name="InputPhoneNumber"
                       placeholder="9876543210">
            </div>
            <a href="#!" id="next1">Next</a>
        </div>
        <%-------------DIVISION 2 STARTS HERE--------------%>
        <div class="hidden" id="div2">
            <div class="form-group">
                <label for="InputName">Full Name</label>
                <input type="text" class="form-control" id="InputName" name="InputName"
                       placeholder="Your Full Name">
            </div>
            <div class="form-group">
                <label for="InputEmail">Email address</label>
                <input type="text" class="form-control" id="InputEmail" name="InputEmail"
                       placeholder="email@example.com">
            </div>
            <div class="form-group">
                <label for="InputDOB">Date of Birth</label>
                <input type="date" class="form-control" id="InputDOB" name="InputDOB">
            </div>
            <div class="form-group">
                <label for="InputDOB">Current Address</label>
                <input type="text" class="form-control" id="InputAddress" name="InputAddress">
            </div>
            <a href="#!" id="next2">Next</a>
        </div>
        <%-------------DIVISION 3 STARTS HERE--------------%>
        <div class="hidden" id="div3">
            <label for="InputType">Space Category</label>
            <select class="custom-select" id="InputType" name="InputType">
                <option selected>Choose your type of space</option>
                <option value="1">Residential</option>
                <option value="2">Commercial / Business</option>
            </select>

            <div class="form-group">
                <label for="InputSpaceAddress">Address of your space that you want to rent out</label>
                <input type="text" class="form-control" id="InputSpaceAddress" name="InputSpaceAddress"
                       placeholder="45 TellyPark Road, Andheri East, Mumbai - 400069">
            </div>

            <div class="form-group">
                <label for="InputRooms">Number of Rooms</label>
                <input type="number" class="form-control" id="InputRooms" name="InputRooms"
                       placeholder="5" min="1" max="50">
            </div>
            <div class="form-group">
                <label for="InputTSA">Total Surface Area (in M<sup>2</sup>)</label>
                <input type="number" class="form-control" id="InputTSA" placeholder="130" name="InputTSA">
            </div>
            <div class="form-group">
                <label for="InputPrice">INR</label>
                <input type="number" class="form-control" id="InputPrice" placeholder="26000" min="5000" name="InputPrice">
            </div>
            <div class="form-group">
                <input type="checkbox" class="form-check-input" id="Check1">
                <label class="form-check-label" for="Check1">All details are true to my knowledge</label>
            </div>
        </div>

    </form>
    <button id="realsubmit" class="btn btn-primary hidden">Submit</button>
    <button id="fakesubmit" class="btn btn-primary hidden">Confirm</button>
</div>

<%@ include file="/template/footer.jsp" %>


<script type="application/javascript" src="../js/jquery.min.js"></script>
<script type="application/javascript" src="../js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="../js/index.js"></script>
<script type="application/javascript" src="../js/fontawesome.js"></script>
<script type="application/javascript" src="../js/bootstrap-validate.js"></script>
<script type="application/javascript" src="js/form.js"></script>


</body>
</html>
