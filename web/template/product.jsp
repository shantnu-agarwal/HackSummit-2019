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
<%@ include file="/template/header.jsp" %>

<%
    try {
        System.out.println("Opening connection at rhome");
        Connection connection = JDBCConnector.getConnection();
        Statement statement = connection.createStatement();
        String query = "SELECT * FROM mytable where iD='" + request.getParameter("id")+ "';";
        ResultSet rs = statement.executeQuery(query);
        rs.next();
%>

<div class="container">
    <img src="<%=rs.getString("image_thumbnail")%>" alt="">

</div>
<%
    }
    catch (Exception e){

    }
%>


<%@ include file="/template/footer.jsp" %>

<script type="application/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="application/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.js"></script>
<script type="application/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
<script type="application/javascript" src="https://kit.fontawesome.com/8957a7e0dd.js"></script>

</body>
</html>