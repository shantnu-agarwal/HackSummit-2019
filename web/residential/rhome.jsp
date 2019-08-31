<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.HackSummit.JDBCConnector" %>
<%@ page import="java.sql.Statement" %>
<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 24-08-2019
  Time: 12:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <%
            try {
                System.out.println("Opening connection at rhome");
                Connection connection = JDBCConnector.getConnection();
                Statement statement = connection.createStatement();
                ResultSet rs = statement.executeQuery("SELECT * FROM mytable where type='apartment' order by RENT_INR  LIMIT 0,12;");
                while (rs.next()) {
        %>
        <div class="col-4">
            <div class="card">
                <img src="<%=rs.getString("image_thumbnail")%>" class="card-img-top" alt="Missing Image" style="max-height: 250px;">
                <div class="card-body">
                    <p class="card-text" style="white-space: nowrap; overflow: hidden;  overflow-wrap: break-word; height: 50px;text-overflow: ellipsis;"><%=rs.getString("Description")%>
                    </p>
                    <a class="btn btn-dark card-text text-white" href="${pageContext.request.contextPath}/template/product.jsp?id=<%=rs.getString("Id") %>">Rent: <%=rs.getString("RENT_INR")%>
                    </a>
                </div>
            </div>
        </div>
        <%
                }
            } catch (Exception e) {
                System.out.println("Error in JSP FILE");
                e.printStackTrace();
            }
        %>

    </div>


</div>

<%@ include file="/template/footer.jsp" %>

<script type="application/javascript" src="js/jquery.min.js"></script>
<script type="application/javascript" src="js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="js/index.js"></script>
<script type="application/javascript" src="https://kit.fontawesome.com/8957a7e0dd.js"></script>

</body>
</html>
