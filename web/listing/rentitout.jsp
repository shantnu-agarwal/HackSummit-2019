<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="com.HackSummit.JDBCConnector" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 01-09-2019
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HackSummit | Aaruush 2019</title>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="css/rentitout.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<%@ include file="/template/header.jsp" %>
<%
    try {
        System.out.println("Opening connection at rhome");
        Connection connection = JDBCConnector.getConnection();
        Statement statement = connection.createStatement();
        String query = "SELECT * FROM mytable where iD='" + request.getParameter("id") + "';";
        ResultSet rs = statement.executeQuery(query);
        rs.next();
%>
<div class="container">
    <h1 style="margin: 2rem;">
        Please provide the following
    </h1>
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
            <a href="#!" class="btn btn-outline-success" id="next1">Next</a>
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
            <a href="#!" class="btn btn-outline-success" id="next2">Next</a>
        </div>
        <%-------------DIVISION 3 STARTS HERE--------------%>
        <div class="hidden" id="div3">
            <div class="form-group">
                <label for="InputPrice">Rental <small>(INR)</small></label>
                <input class="form-control" disabled id="InputPrice" value="<%=rs.getString("RENT_INR")%>" name="InputPrice">
            </div>
            <div class="form-group">
                <input type="checkbox" class="form-check-input" id="Check1" required>
                <label class="form-check-label" for="Check1">All details are true to my knowledge</label>
            </div>
        </div>

    </form>
    <button id="realsubmit" class="btn btn-primary hidden">Submit</button>
    <button id="fakesubmit" class="btn btn-primary hidden">Confirm</button>
</div>
<% }
catch (Exception e){
        e.printStackTrace();

}%>

<%@ include file="/template/footer.jsp" %>

<script type="application/javascript" src="../js/jquery.min.js"></script>
<script type="application/javascript" src="../js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="../js/index.js"></script>
<script type="application/javascript" src="../js/fontawesome.js"></script>
<script type="application/javascript" src="../js/bootstrap-validate.js"></script>

</body>
</html>