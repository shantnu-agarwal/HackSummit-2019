<%--
  Created by IntelliJ IDEA.
  User: Shantnu Agarwal
  Date: 28-08-2019
  Time: 03:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<button onclick="topFunction()" id="scrollBtn" title="Go to top">
    <i class="fas fa-arrow-up"></i>
</button>

<footer> &copy; Unified Rental Service - HackSummit Aaruush
    2019
</footer>

<style>
    #scrollBtn {
        display: none;
        position: fixed;
        bottom: 4rem;
        right: 1rem;
        z-index: 99;
        border: none;
        outline: none;
        background-color: red;
        color: white;
        padding: 0.5rem;
        border-radius: 10px;
    }

    .btn:hover {
        background-color: green;
    }
</style>
<script>
    window.onscroll = function () {
        scrollFunction()
    };

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("scrollBtn").style.display = "block";
        } else {
            document.getElementById("scrollBtn").style.display = "none";
        }
    }


    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>