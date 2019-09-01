<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 01-09-2019
  Time: 03:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.HackSummit.JDBCConnector" %>
<%@ page import="java.sql.Statement" %>
<html>
<head>
    <title>Space Listing | Hack Summit Aaruush</title>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HackSummit | Aaruush 2019</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/product.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<section id="sec1">
    <div id="bg"></div>


<%@ include file="/template/header.jsp" %>

<%
    String owner = null;
    try {
        System.out.println("Opening connection at rhome");
        Connection connection = JDBCConnector.getConnection();
        Statement statement = connection.createStatement();
        String query = "SELECT * FROM mytable where iD='" + request.getParameter("id") + "';";
        ResultSet rs = statement.executeQuery(query);
        rs.next();
        owner = rs.getString("owner_id");
%>

<div class="container">
    <h1>Listing Information</h1>
    <h3 style="margin: 2rem;">Quick Facts</h3>
    <div class="row">
        <div class="col">
            <ul class="list-group">
                <li class="list-group-item"><strong>Rooms:</strong> <%=rs.getString("Rooms")%>
                </li>
                <li class="list-group-item"><strong>Floors: </strong><%=rs.getString("Floor")%>
                </li>
                <li class="list-group-item"><strong>Surface Area: </strong><%=rs.getString("TSA_in_m2")%>
                </li>
                <li class="list-group-item"><strong>Monthly Rental: </strong>Rs. <%=rs.getString("RENT_INR")%>
                </li>
                <li class="list-group-item"><strong>Locality:</strong> <%=rs.getString("AREA")%>
                </li>
            </ul>
        </div>
        <div class="col">
            <img src="<%=rs.getString("image_thumbnail")%>" alt="site image" style="width: 350px">
        </div>
    </div>
    <%
        } catch (Exception e) {

        }
        try {
            System.out.println("Opening connection at rhome");
            Connection connection = JDBCConnector.getConnection();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM user_details where uidai='" + owner + "';";
            ResultSet rs = statement.executeQuery(query);
            rs.next();

    %>


    <h3 style="margin: 2rem;">Owner Information</h3>
    <div class="row">
        <div class="col-4">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active btn-outline-success" id="list-home-list"
                   data-toggle="list"
                   href="#list-home" role="tab" aria-controls="home">Owner Name</a>
                <a class="list-group-item list-group-item-action btn-outline-success" id="list-profile-list"
                   data-toggle="list"
                   href="#list-profile" role="tab" aria-controls="profile">Joining Date</a>
                <a class="list-group-item list-group-item-action btn-outline-success" id="list-messages-list"
                   data-toggle="list"
                   href="#list-messages" role="tab" aria-controls="messages">Aadhaar Verified</a>
                <a class="list-group-item list-group-item-action btn-outline-success" id="list-settings-list"
                   data-toggle="list"
                   href="#list-settings" role="tab" aria-controls="settings">Contact Details</a>
            </div>
        </div>
        <div class="col-8">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list-home" role="tabpanel"
                     aria-labelledby="list-home-list"><h4><%=rs.getString("fullname")%> <i>(Trusted User)</i></h4>
                </div>
                <div class="tab-pane fade" id="list-profile" role="tabpanel"
                     aria-labelledby="list-profile-list"><h4><%=rs.getString("create_date")%></h4>
                </div>
                <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list"><h4>Yes <i>(during registration itself)</i></h4>
                </div>
                <div class="tab-pane fade" id="list-settings" role="tabpanel"
                     aria-labelledby="list-settings-list"><h4>Reach out at : +91 - <%=rs.getString("phno")%>
                    <br>Or email to: <a href="mailto:<%=rs.getString("email")%>"><%=rs.getString("email")%></a></h4>
                </div>
            </div>
        </div>
    </div>

    <% } catch (Exception e) {
        e.printStackTrace();
    }%>
    <div class="row" style="margin: 2rem;">
        <a href="${pageContext.request.contextPath}/listing/rentitout.jsp?id=<%=request.getParameter("id")%>" class="btn btn-dark">Rent it!</a>
    </div>
</div>

</section>
<%@ include file="/template/footer.jsp" %>

<script type="application/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="application/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
<script type="application/javascript" src="https://kit.fontawesome.com/8957a7e0dd.js"></script>

</body>
</html>