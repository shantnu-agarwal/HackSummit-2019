<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 27-08-2019
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/favicon.png"/>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/Home"><img src="${pageContext.request.contextPath}/assets/home.png" alt="img" width="50px"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/Home">Home
                <span class="sr-only">(current)</span>
            </a></li>
            <li class="nav-item"><a class="nav-link" href="#!">Support </a></li>
            <li class="nav-item"><a class="nav-link" href="#!">FAQ </a></li>
        </ul>

        SIGN IN AND LOGOUT HERE

    </div>
</nav>

