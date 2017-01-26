<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 1/26/2017
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AviaSalesUA</title>

    <!-- CSS -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="resources/feedback-success/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/feedback-success/css/form-elements.css">
    <link rel="stylesheet" href="resources/feedback-success/css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="resources/index/images/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/register/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/register/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/register/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="resources/register/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

<!-- Content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>AviaSalesUA </strong> Registration</h1>
                    <div class="description">
                        <p>
                            Thank you for your feedback on AviaSalesUA! :)
                        </p>
                    </div>
                    <div class="top-big-link">
                        <a class="btn btn-link-1" href="/" >Back to main</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- MODAL -->
<div class="modal fade" id="modal-register" tabindex="-1" role="dialog" aria-labelledby="modal-register-label" aria-hidden="true">
    <c:url value="/newuser" var="regUrl" />
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h3 class="modal-title" id="modal-register-label">Sign up now</h3>
                <p>Fill in the form below to get instant access:</p>
            </div>

            <div class="modal-body">

                <form action="${regUrl}" action="" method="post" class="registration-form">
                    <div class="form-group">
                        <label class="sr-only" for="form-login">Login</label>
                        <input type="text" name="login" placeholder="Login ..." class="form-first-name form-control" id="form-login">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-password">Last name</label>
                        <input type="password" name="password" placeholder="Password..." class="form-last-name form-control" id="form-password">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-email">Email</label>
                        <input type="email" name="email" placeholder="Email..." class="form-email form-control" id="form-email">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-phone">Email</label>
                        <input type="text" name="phone" placeholder="Phone..." class="form-email form-control" id="form-phone">
                    </div>
                    <button type="submit" href="/signup-success" class="btn">Registration</button>
                    <p><a href="/login">Already have an account?</a></p>

                    <c:if test="${exists ne null}">
                        <p>User already exists!</p>
                    </c:if>
                </form>

            </div>

        </div>
    </div>
</div>


<!-- Javascript -->
<script src="resources/feedback-success/js/jquery-1.11.1.min.js"></script>
<script src="resources/feedback-success/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/feedback-success/js/jquery.backstretch.min.js"></script>
<script src="resources/feedback-success/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="resources/feedback-success/js/placeholder.js"></script>
<![endif]-->

</body>
</html>
