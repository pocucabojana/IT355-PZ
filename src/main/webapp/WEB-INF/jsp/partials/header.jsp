<%-- 
    Document   : header
    Created on : Apr 15, 2017, 3:22:15 AM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>Rent A Car</title>


        <!-- JQuery -->
        <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>


        <!-- Bootstrap core CSS -->
        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

        <!-- MaCarouselin CSS -->
        <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

        <!-- Main CSS -->
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">


        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    </head>
    <!-- NAVBAR
    ================================================== -->
    <body>
        <div class="navbar-wrapper">
            <div class="container">

                <nav class="navbar navbar-inverse navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">Rent A Car</a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="<c:url value="/" />">Pocetna strana</a></li>
                                <li><a href="<c:url value="/product/productList/all" />">Vozila</a></li>
                                <li><a href="<c:url value="/about" />">O nama</a></li>
                            </ul>
                            <ul class="nav navbar-nav pull-right">
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                    <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                                    <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

                                    <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                        <li><a href="<c:url value="/customer/cart" />">Rentirano</a></li>
                                        </c:if>

                                    <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                        <li><a href="<c:url value="/admin" />">Admin</a></li>
                                        </c:if>

                                </c:if>

                                <c:if test="${pageContext.request.userPrincipal.name == null}">
                                    <li><a href="<c:url value="/login" />">Login</a></li>
                                    <li><a href="<c:url value="/register" />">Registracija</a></li>
                                    </c:if>
                            </ul>
                        </div>
                    </div>
                </nav>

            </div>
        </div>