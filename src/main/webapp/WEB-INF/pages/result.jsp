<%--@elvariable id="orders" type="ch.qos.logback.core.net.JMSAppenderBase"--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>AviaSalesUA Order</title>
    <link href='https://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="shortcut icon" href="resources/index/images/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/index/images/ico/1.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/index/images/ico/1.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/index/images/ico/1.png">
    <link rel="apple-touch-icon-precomposed" href="resources/index/images/ico/1.png">


    <style>
        *,
        *:before,
        *:after {
            box-sizing: border-box;
        }

        html,
        body {
            height: 100%;
        }

        body {
            background: url("resources/result/img/resultimage.jpg");
            background-size: cover;
            font: 1em/1.5 'Droid Sans', sans-serif;
        }

        .pricing {
            -moz-transform: translate(-49%, -49.1%);
            -ms-transform: translate(-49%, -49.1%);
            -webkit-transform: translate(-49%, -49.1%);
            transform: translate(-49%, -49.1%);
            position: absolute;
            left: 50%;
            top: 50%;
            width: 310px;
            font-size: 0;
            opacity: 1;
            transition: opacity .2s ease;
        }

        .price-option {
            display: inline-block;
            width: 6.25em;
            vertical-align: middle;
            margin-right: 0.3125em;
            font-size: 16px;
            opacity: 1;
            transition: opacity .2s ease;
        }

        .price-option:last-child {
            margin-right: 0;
        }

        .pricing:hover .price-option {
            opacity: 0.6;
        }

        .pricing:hover .price-option:hover {
            opacity: 1;
        }

        .price-option__detail {
            padding: 2em 0;
            background: white;
            text-align: center;
            width: 200px;
        }

        .price-option--low .price-option__detail {
            border-radius: .25em 0 0 0;
        }

        .price-option--mid .price-option__detail {
            padding: 2.3em 0;
            border-radius: .25em .25em 0 0;
        }

        .price-option--high .price-option__detail {
            border-radius: 0 .25em 0 0;
        }

        .price-option__cost,
        .price-option__type {
            display: block;
        }

        .price-option__cost {
            font-size: 1.5em;
            color: #383838;
        }

        .price-option__type {
            font-size: .7em;
            text-transform: uppercase;
            color: #000000;
        }

        .price-option__purchase {
            position: relative;
            display: block;
            padding: .6em;
            font-size: .875em;
            font-weight: bold;
            text-align: center;
            text-transform: uppercase;
            text-decoration: none;
            color: rgba(255, 255, 255, 0.6);
            width: 200px;
        }

        .price-option--low .price-option__purchase {
            background: #a7d155;
            border-radius: 0 0 0 .25em;
        }

        .price-option--mid .price-option__purchase {
            background: #1421f3;
            border-radius: 0 0 .25em .25em;
        }

        .price-option--high .price-option__purchase {
            background: #e54e4b;
            border-radius: 0 0 .25em 0;
        }

        .price-option__purchase:before {
            content: '';
            position: absolute;
            bottom: 100%;
            left: 50%;
            display: block;
            width: 0;
            height: 0;
            margin-left: -5px;
            border-width: 0 5px 5px;
            border-style: solid;
        }

        .price-option--low .price-option__purchase:before {
            border-color: transparent transparent #a7d155;
        }

        .price-option--mid .price-option__purchase:before {
            border-color: transparent transparent #1421f3;
        }

        .price-option--high .price-option__purchase:before {
            border-color: transparent transparent #e54e4b;
        }

    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>
<p style="text-align:center;">Dear ${login}! This is your Order result. You can download it [ctrl+s] or go <a href="/"><strong>Back</strong></a></p>

<body>
<div class="pricing">
    <div class="[ price-option price-option--mid ]">
        <div class="price-option__detail">
            <span class="price-option__type">Ordered by:</span>
            <span class="price-option__type"><strong><%=request.getParameter("userName")%></strong></span>
            <span class="price-option__type"><strong><%=request.getParameter("userSurname")%></strong></span>
            <p></p>
            <span class="price-option__type">Code: <strong><%=request.getParameter("code")%></strong></span>
            <span class="price-option__type">Way: <strong><%=request.getParameter("way")%></strong></span>
            <span class="price-option__type">Company: <strong><%=request.getParameter("company")%></strong></span>
            <span class="price-option__type">Class: <strong><%=request.getParameter("flightClass")%></strong></span>
            <p></p>
            <span class="price-option__type">Hotel: <strong><%=request.getParameter("hotelName")%></strong></span>
            <span class="price-option__type">Type: <strong><%=request.getParameter("hotelType")%></strong></span>
            <span class="price-option__type">Rooms: <strong><%=request.getParameter("userSurname")%></strong></span>
            <p></p>
            <span class="price-option__type">Taxi: <strong><%=request.getParameter("taxiCompany")%></strong></span>
            <span class="price-option__type">Type: <strong><%=request.getParameter("taxiType")%></strong></span>
            <span class="price-option__type">Car: <strong><%=request.getParameter("taxiName")%></strong></span>
        </div>

        <a class="price-option__purchase">Total: <%=request.getParameter("totalPrice")%></a>

    </div>

    <p style="text-align: center;">Our managers contact with you soon. Thanks for using our service. [DIPLOMA]</p>
</div>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>
</html>