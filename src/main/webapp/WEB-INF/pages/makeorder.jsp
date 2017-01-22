<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 12/27/2016
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AviaSalesUA</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="resources/makeorder/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/makeorder/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/makeorder/css/form-elements.css">
    <link rel="stylesheet" href="resources/makeorder/css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="resources/makeorder/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/makeorder/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/makeorder/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/makeorder/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="resources/makeorder/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

<!-- Top menu -->
<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">BootZard - Bootstrap Wizard Template</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="top-navbar-1">
            <ul class="nav navbar-nav navbar-right">
            </ul>
        </div>
    </div>
</nav>
<!-- Top content -->
<div class="top-content">
    <div class="container">

        <div class="row">
            <div class="col-sm-8 col-sm-offset-2 text">
                <h1>Manual <strong>AviaSalesUA</strong> order creation.</h1>
                <div class="description">
                    <p>
                        This is  responsive AviaSalesUA order cration.
                        You can go <a href="/"><strong>Back</strong></a>, or continue:
                    </p>
                </div>
            </div>
        </div>

        <c:url value="/neworder" var="regUrl" />
        <form role="form" action="${regUrl}" method="post" class="f1">
        <div class="row">
            <div id="mask">
            <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">
                    <h3>Create your order below manually and SAFELY :) Enjoy!</h3>
                    <p>Fill in the form to get order result and simulate transaction</p>
                    <div class="f1-steps">
                        <div class="f1-progress">
                            <div class="f1-progress-line" data-now-value="16.66" data-number-of-steps="3" style="width: 16.66%;"></div>
                        </div>
                        <div class="f1-step active">
                            <div class="f1-step-icon"><i class="fa fa-plane"></i></div>
                            <p>flight</p>
                        </div>
                        <div class="f1-step">
                            <div class="f1-step-icon"><i class="fa fa-hotel"></i></div>
                            <p>hotel</p>
                        </div>
                        <div class="f1-step">
                            <div class="f1-step-icon"><i class="fa fa-taxi"></i></div>
                            <p>taxi</p>
                        </div>
                    </div>
                    <fieldset>
                        <h4>Set up:</h4>
                        <div class="form-group">
                            <label class="sr-only" for="f1-first-name">First name</label>
                            <input type="text" name="userName" placeholder="Enter your name..." class="f1-first-name form-control" id="f1-first-name">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="f1-last-name">Last name</label>
                            <input type="text" name="userSurname" placeholder="Enter your last name..." class="f1-last-name form-control" id="f1-last-name">
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="way" name="way">
                                <option value="">-- From/To --</option>
                                <option value="kiev-rome">Kiev-Rome</option>
                                <option value="kiev-london">Kiev-London</option>
                                <option value="kiev-amsterdam">Kiev-Amsterdam</option>
                                <option value="kiev-madrid">Kiev-Madrid</option>
                                <option value="kiev-tokyo">Kiev-Tokyo</option>
                                <option value="kiev-seul">Kiev-Seul</option>
                                <option value="kiev-pekin">Kiev-Pekin</option>
                                <option value="kiev-singapore">Kiev-Singapore</option>
                                <option value="kiev-mumbai">Kiev-Mumbai</option>
                                <option value="kiev-dubai">Kiev-Dubai</option>
                                <option value="kiev-bali">Kiev-Bali</option>
                                <option value="kiev-dallas">Kiev-Dallas</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="city" name="city">
                                <option value="">-- Depature to: --</option>
                                <option value="barcelona">Barcelona</option>
                                <option value="rome">Rokyo</option>
                                <option value="detroid">Detroid</option>
                                <option value="amsterdam">Amsterdam</option>
                                <option value="tokyo">Tokyo</option>
                                <option value="seul">Seul</option>
                                <option value="pekin">Pekin</option>
                                <option value="singapore">Singapore</option>
                                <option value="mumbai">Mumbai</option>
                                <option value="dubai">Dubai</option>
                                <option value="bali">Bali</option>
                                <option value="dallas">Dallas</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="code" name="code">
                                <option value="">-- Code --</option>
                                <option value="eu-man-xxx">eu-</option>
                                <option value="us-man-xxx">us-</option>
                                <option value="as-man-xxx">as-</option>
                                <option value="tr-mam-xxx">tr-</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="company" name="company">
                                <option value="">-- Company -- </option>
                                <option value="klm">KLM</option>
                                <option value="mau">MAU</option>
                                <option value="turkish-airlines">Turkish Air Lines</option>
                                <option value="france-air">Air France</option>
                                <option value="british-air">British AirLines</option>
                                <option value="china-airlines">China-Air</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="flightClass" name="flightClass">
                                <option value="">-- Flight Class -- </option>
                                <option value="economy">economy</option>
                                <option value="second">second</option>
                                <option value="first">first</option>
                                <option value="vip">vip</option>
                            </select>
                        </div>
                        <div class="f1-buttons">
                            <button type="button" class="btn btn-next">Next</button>
                        </div>
                    </fieldset>
                    <fieldset>
                        <h4>Select hotel:</h4>
                        <div class="form-group">
                            <select class="form-control" id="hotelName" name="hotelName">
                                <option value="">-- Select Hotel -- </option>
                                <option value="shangrila">ShangriLa</option>
                                <option value="chatrium">Chatrium</option>
                                <option value="fourseasons">Four Seasons</option>
                                <option value="hilton">Hilton</option>
                                <option value="yamaika">Yamaika</option>
                                <option value="dragon">Dragon</option>
                                <option value="lalka">Lalka</option>
                                <option value="u yulika">U Yulika</option>
                                <option value="malibu">Malibu</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="amountOfRooms" name="amountOfRooms">
                                <option value="">-- Select Rooms -- </option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="hotelType" name="hotelType">
                                <option value="">-- Select Type -- </option>
                                <option value="hostel">hostel</option>
                                <option value="3 stars">3 stars</option>
                                <option value="4 stars">4 stars</option>
                                <option value="5 stars">5 stars</option>
                            </select>
                        </div>
                        <div class="f1-buttons">
                            <button type="button" class="btn btn-previous">Previous</button>
                            <button type="button" class="btn btn-next">Next</button>
                        </div>
                    </fieldset>
                    <fieldset>
                        <h4>Select taxi:</h4>
                        <div class="form-group">
                            <select class="form-control" id="taxiName" name="taxiName">
                                <option value="">-- Car -- </option>
                                <option value="mercedess">Mercedess</option>
                                <option value="rols-roys">Rols</option>
                                <option value="bentley">Bentley</option>
                                <option value="audi">Audi</option>
                                <option value="chevrolette">Chevi</option>
                                <option value="daewo-anus">Daewo-Anus</option>
                                <option value="seat">Seat</option>
                                <option value="mazeratti">Mazeratti</option>
                                <option value="lada-kalina">Lada</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="taxiCompany" name="taxiCompany">
                                <option value="">-- Company -- </option>
                                <option value=uklon>uklon</option>
                                <option value="838">eightthreeeitht</option>
                                <option value="fourwheels">wheels</option>
                                <option value="azaza">azaza</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="taxiType" name="taxiType">
                                <option value="">-- Type -- </option>
                                <option value="sidane">sidane</option>
                                <option value="cupe">cupe</option>
                                <option value="hatchback">hatchback</option>
                                <option value="universal">universal</option>
                            </select>
                        </div>
                        <div class="f1-buttons">
                            <button type="button" class="btn btn-previous">Previous</button>
                            <button type="submit" name="submit" class="btn btn-submit">Submit</button>
                        </div>
                    </fieldset>
            </div>
            </div>
        </div>
        </form>
    </div>
</div>


<!-- Javascript -->
<script src="resources/makeorder/js/jquery-1.11.1.min.js"></script>
<script src="resources/makeorder/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/makeorder/js/jquery.backstretch.min.js"></script>
<script src="resources/makeorder/js/retina-1.1.0.min.js"></script>
<script src="resources/makeorder/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="resources/makeorder/js/placeholder.js"></script>
<![endif]-->

</body>
</html>