<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative One Page Parallax Template">
    <meta name="keywords" content="Creative, Onepage, Parallax, HTML5, Bootstrap, Popular, custom, personal, portfolio" />
    <meta name="author" content="">
    <title>AviaSalesUA</title>
    <link href="resources/index/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/index/css/prettyPhoto.css" rel="stylesheet">
    <link href="resources/index/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/index/css/animate.css" rel="stylesheet">
    <link href="resources/index/css/main.css" rel="stylesheet">
    <link href="resources/index/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]> <script src="resources/index/js/html5shiv.js"></script>
<script src="resources/index/js/respond.min.js"></script> <![endif]-->
    <link rel="shortcut icon" href="resources/index/images/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/index/images/ico/1.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/index/images/ico/1.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/index/images/ico/1.png">
    <link rel="apple-touch-icon-precomposed" href="resources/index/images/ico/1.png">
</head><!--/head-->
<body>
<div class="preloader">
    <div class="preloder-wrap">
        <div class="preloder-inner">
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
        </div>
    </div>
</div><!--/.preloader-->
<header id="navigation">
    <div class="navbar navbar-inverse navbar-fixed-top" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><h1><img src="resources/index/images/logo.png" alt="logo"></h1></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="scroll active"><a href="#navigation">Home</a></li>
                    <li class="scroll"><a href="#about-us">Us</a></li>
                    <li class="scroll"><a href="#services">Services</a></li>
                    <li class="scroll"><a href="#our-team">Our Team</a></li>
                    <li class="scroll"><a href="#portfolio">Can Get</a></li>
                    <li class="scroll"><a href="#clients">Clients</a></li>
                    <li class="scroll"><a href="#blog">Propositions</a></li>
                    <li class="scroll"><a href="#contact">Feedback</a></li>
                    <li><a href="/logout">Logout</a></li>
                </ul>
            </div>
        </div>
    </div><!--/navbar-->
</header> <!--/#navigation-->

<section id="home">
    <div class="home-pattern"></div>
    <div id="main-carousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#main-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#main-carousel" data-slide-to="1"></li>
            <li data-target="#main-carousel" data-slide-to="2"></li>
        </ol><!--/.carousel-indicators-->
        <div class="carousel-inner">
            <div class="item active" style="background-image: url(resources/index/images/slider/3.jpg)">
                <div class="carousel-caption">
                    <div>
                        <h2 class="heading animated bounceInDown">'AviaSalesUA' (testing) Quick and save way to adventure</h2>
                        <p class="animated bounceInUp">You can create order anytime</p>
                        <a class="btn btn-default slider-btn animated fadeIn" href="/makeorder">Create order</a>
                    </div>
                </div>
            </div>
            <div class="item" style="background-image: url(resources/index/images/slider/2.jpg)">
                <div class="carousel-caption"> <div>
                    <h2 class="heading animated bounceInDown">Get All in time</h2>
                    <p class="animated bounceInUp">Everything is simple and amazing</p> <a class="btn btn-default slider-btn animated fadeIn" href="/makeorder">Create Order</a>
                </div>
                </div>
            </div>
            <div class="item" style="background-image: url(resources/index/images/slider/1.jpg)">
                <div class="carousel-caption">
                    <div>
                        <h2 class="heading animated bounceInRight">Fully Responsive Site. Allow in your browser download my style scripts to make a better picture.</h2>
                        <p class="animated bounceInLeft">100% AviaSalesUA</p>
                        <a class="btn btn-default slider-btn animated bounceInUp" href="/makeorder">Create order</a>
                    </div>
                </div>
            </div>
        </div><!--/.carousel-inner-->

        <a class="carousel-left member-carousel-control hidden-xs" href="#main-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
        <a class="carousel-right member-carousel-control hidden-xs" href="#main-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
    </div>

</section><!--/#home-->

<section id="about-us">
    <div class="container">
        <div class="text-center">
            <div class="col-sm-8 col-sm-offset-2">
                <h2 class="title-one">Why With Us?</h2>
                <p>We trying to create all comfortable conditions which will help you to traver safe and quick. This is Diploma testing project, so a lot of functions are missing or cutted out. Feel free and test our functions. </p>
            </div>
        </div>
        <div class="about-us">
            <div class="row">
                <div class="col-sm-6">
                    <h3>Why with us?</h3>
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#about" data-toggle="tab"><i class="fa fa-chain-broken"></i> Flights</a></li>
                        <li><a href="#mission" data-toggle="tab"><i class="fa fa-th-large"></i> Hotels</a></li>
                        <li><a href="#community" data-toggle="tab"><i class="fa fa-users"></i> Taxis</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="about">
                            <div class="media">
                                <img class="pull-left media-object" src="resources/index/images/about-us/about.jpg" alt="about us">
                                <div class="media-body">
                                    <p>We provide you the best Air Line Companies in the world such as KLM, Air France & others.</p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="mission">
                            <div class="media">
                                <img class="pull-left media-object" src="resources/index/images/about-us/mission.jpg" alt="Mission">
                                <div class="media-body">
                                    <p>You choose - we find. Easy, Sipmle, Ez to reserve your apartment.</p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="community">
                            <div class="media">
                                <img class="pull-left media-object" src="resources/index/images/about-us/community.jpg" alt="Community">
                                <div class="media-body">
                                    <p>Many baggage? No problem. Need to be quick? No problem. A lot of people? No problem. All in one? And this sh*t we can do for you :) Choose the best cars you want !</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div id="contact-form-section1">
                        <div class="container">
                            <h1>Welcome, ${login}! </h1>
                                <h2>You can change your data anytime:</h2>
                             <c:url value="/update" var="updateUrl" />
                            <form action="${updateUrl}" method="POST">
                                <br/><input type="text" name="email" class="form-control-form mail-field" value="${email}" placeholder="Your Email" /><br/>
                                <br/><input type="text" name="phone" class="form-control-form name-field" value="${phone}" placeholder="Your Phone" /><br/>
                                <h1></h1>
                                <button type="submit" class="btn btn-primary">Update</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!--/#about-us-->

<section id="services" class="parallax-section">
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-8 col-sm-offset-2">
                <h2 class="title-one">Our Services</h2>
                <p>We provide you the best services you can only imagine: booking flight tickets, taxis and hotels. Here are a wide list of services:</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="our-service">
                    <div class="services row">
                        <div class="col-sm-4">
                            <div class="single-service">
                                <i class="fa fa-th"></i>
                                <h2>Hotels</h2>
                                <p>Why our hotels? Because we are always one step ahead of you. Now explain how it works. You book a hotel, we all do the rest for you. Our site automatically looks for and shove you the best hotels for your request. (There can be advertising) :)</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="single-service">
                                <i class="fa fa-refresh fa-spin fa-3x fa-fw"></i>
                                <h2>Flights</h2>
                                <p>Why our air services? Because I so wanted to write in my diploma work. :) Actually routes and services we offer are also very reasonable. Everything is done automatically for you. We care about our customers. (There can be advertising)      :)</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="single-service">
                                <i class="fa fa-users"></i>
                                <h2>Taxis</h2>
                                <p>Why our cars? As I said before, our incredible taxi drivers with their vehicles, can work wonders on the road and when serving, and never asked to tip. Need to go quickly, with cabin stuffed with people - no problem. Most of the world best serve you anywhere. (There can be advertising) </p>
                            </div>
                        </div></div>
                </div>
            </div>
        </div>
    </div>
</section><!--/#service-->

<section id="our-team">
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-8 col-sm-offset-2">
                <h2 class="title-one">Meet Our Rockstar Team</h2>
                <p>It all started with Adobe Photoshop and do not know where it will lead us. We are the crew of young and ambitious people who will make you beloved site of your choice.</p>
            </div>
        </div>
        <div id="team-carousel" class="carousel slide" data-interval="false">
            <a class="member-left" href="#team-carousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
            <a class="member-right" href="#team-carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            <div class="carousel-inner team-members">
                <div class="row item active">
                    <div class="col-sm-6 col-md-3">
                        <div class="single-member">
                            <img src="resources/index/images/our-team/member1.jpg" alt="team member" />
                            <h4>Andrii Trokhymchuck</h4>
                            <h5>Java Junior, Developer, Engineer</h5>
                            <p>Team leader. Skilled Java, Spring, MySql, e.t.c</p>
                            <div class="socials">
                                <a href="https://www.facebook.com/retropalladin"><i class="fa fa-facebook"></i></a>
                                <a href="https://vk.com/rocket_____bunny"><i class="fa fa-vk"></i></a>
                                <a href="https://plus.google.com/u/0/106092933292488346242"><i class="fa fa-google-plus"></i></a>
                                <a href="https://www.instagram.com/andrew.tvv"><i class="fa fa-instagram"></i></a>
                                <a href="https://www.linkedin.com/in/andrii-trokhymchuk-31b775133?trk=hp-identity-name"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="single-member">
                            <img src="resources/index/images/our-team/member2.jpg" alt="team member" />
                            <h4>Jane Turko</h4>
                            <h5>Creative Designer, Web Designer, Creative soul, Blonde</h5>
                            <p>Skilled Photoshop, e.t.c.</p>
                            <div class="socials">
                                <a href="https://www.facebook.com/jenyra.turko"><i class="fa fa-facebook"></i></a>
                                <a href="https://vk.com/id132374533"><i class="fa fa-vk"></i></a>
                                <%--<a href="#"><i class="fa fa-google-plus"></i></a>--%>
                                <a href="https://www.instagram.com/jane_just_jt"><i class="fa fa-instagram"></i></a>
                                <a href="https://www.linkedin.com/in/jane-turko-369778106?authType=name&authToken=QpTb&trk=mirror-profile-memberlist-photo"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!--/#Our-Team-->

<section id="portfolio">
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-8 col-sm-offset-2">
                <h2 class="title-one">See where you can get</h2>
                <p>Here you can see our flight gallery. Learn english and turn on your imagination. Enjoy :)</p>
            </div>
        </div>
        <ul class="portfolio-filter text-center">
            <li><a class="btn btn-default active" href="#" data-filter="*">All</a></li>
            <li><a class="btn btn-default" href="#" data-filter=".html">Asia</a></li>
            <li><a class="btn btn-default" href="#" data-filter=".wordpress">Europe</a></li>
            <li><a class="btn btn-default" href="#" data-filter=".joomla">USA</a></li>
            <li><a class="btn btn-default" href="#" data-filter=".megento">Other</a></li>
        </ul><!--/#portfolio-filter-->
        <div class="portfolio-items">
            <div class="col-sm-3 col-xs-12 portfolio-item html">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/1.jpg" alt=""></div>
                    <div class="mask text-center">
                        <h3>Machu Picchu</h3>
                        <h4>Machu Picchu was built around 1450, at the height of the Inca.</h4>
                        <a href="https://en.wikipedia.org/wiki/Machu_Picchu"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item joomla">
                <div class="view efffect" >
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/2.jpg" alt="">
                    </div>
                    <div class="mask text-center">
                        <h3>Statue of Liberty</h3>
                        <h4>The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States.</h4>
                        <a href="https://en.wikipedia.org/wiki/Statue_of_Liberty"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item2.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item wordpress">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/3.jpg" alt="">
                    </div>
                    <div class="mask text-center">
                        <h3>Eiffel Tower</h3>
                        <h4>It's a wrought iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel.</h4>
                        <a href="https://en.wikipedia.org/wiki/Eiffel_Tower"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item3.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item megento">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/4.jpg" alt="">
                    </div>
                    <div class="mask text-center">
                        <h3>Kangaroo</h3>
                        <h4>Kangaroos are endemic to Australia.</h4>
                        <a href="https://en.wikipedia.org/wiki/Kangaroo"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item4.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item html">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/5.jpg" alt="">
                    </div> <div class="mask text-center">
                    <h3>South Korea</h3>
                    <h4>South Korea officially the Republic of Korea is a sovereign state in East Asia.</h4>
                    <a href="https://en.wikipedia.org/wiki/South_Korea"><i class="fa fa-link"></i></a>
                    <a href="resources/index/images/portfolio/big-item5.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item wordpress">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/6.jpg" alt="">
                    </div>
                    <div class="mask text-center">
                        <h3>Palace of Westminster</h3>
                        <h4>It lies on the north bank of the River Thames in central London.</h4>
                        <a href="https://en.wikipedia.org/wiki/Palace_of_Westminster"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item6.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item html">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/7.jpg" alt="">
                    </div>
                    <div class="mask text-center">
                        <h3>Kinkaku-ji</h3>
                        <h4>is a Zen Buddhist temple in Kyoto, Japan.</h4>
                        <a href="https://en.wikipedia.org/wiki/Kinkaku-ji"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item7.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item joomla">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/8.jpg" alt=""></div>
                    <div class="mask text-center">
                        <h3>New York City</h3>
                        <h4>New York is an important center for international diplomacy and has been described as the cultural and financial capital of the world.</h4>
                        <a href="https://en.wikipedia.org/wiki/New_York_City"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item8.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item html">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/9.jpg" alt="">
                    </div>
                    <div class="mask text-center">
                        <h3>Pagoda</h3>
                        <h4>A pagoda is a tiered tower with multiple eaves, built in traditions originating as stupa in historic South Asia.</h4>
                        <a href="https://en.wikipedia.org/wiki/Pagoda"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item9.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item wordpress">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/10.jpg" alt=""></div>
                    <div class="mask text-center">
                        <h3>Cinque Terre</h3>
                        <h4>The Cinque Terre is a rugged portion of coast on the Italian Riviera.</h4>
                        <a href="https://en.wikipedia.org/wiki/Cinque_Terre"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item10.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item joomla">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/11.jpg" alt=""></div>
                    <div class="mask text-center">
                        <h3>Alaska</h3>
                        <h4>Alaska is a U.S. state located in the northwest extremity of North America.</h4>
                        <a href="https://en.wikipedia.org/wiki/Alaska"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item11.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-xs-12 portfolio-item megento">
                <div class="view efffect">
                    <div class="portfolio-image">
                        <img src="resources/index/images/portfolio/12.jpg" alt=""></div>
                    <div class="mask text-center">
                        <h3>Sydney Opera House</h3>
                        <h4>The Sydney Opera House is a multi-venue performing arts centre in Sydney, Australia.</h4>
                        <a href="https://en.wikipedia.org/wiki/Sydney_Opera_House"><i class="fa fa-link"></i></a>
                        <a href="resources/index/images/portfolio/big-item12.jpg" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section> <!--/#portfolio-->

<section id="clients" class="parallax-section">
    <div class="container">
        <div class="clients-wrapper">
            <div class="row text-center">
                <div class="col-sm-8 col-sm-offset-2">
                    <h2 class="title-one">Clients Say About Us</h2>
                    <p>We are happy to take every comment in its side, because we must develop. We are glad to every response left you. Here are some reviews left: (randomly)</p>
                </div>
            </div>
            <div id="clients-carousel" class="carousel slide" data-ride="carousel"> <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#clients-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#clients-carousel" data-slide-to="1"></li>
                    <li data-target="#clients-carousel" data-slide-to="2"></li>
                    <li data-target="#clients-carousel" data-slide-to="3"></li>
                    <li data-target="#clients-carousel" data-slide-to="4"></li>
                </ol> <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="single-client">
                            <div class="media">
                                <img class="pull-left" src="resources/index/images/clients/client1.jpg" alt="">
                                <div class="media-body">
                                    <blockquote><p>OMG OMG Ommggggggg!! It's very swwwwwwwwweeeat.</p><small>Julian Freier</small><a href="https://vk.com/julian.freier">www.vk.com</a></blockquote>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="single-client">
                            <div class="media">
                                <img class="pull-left" src="resources/index/images/clients/client2.jpg" alt="">
                                <div class="media-body">
                                    <blockquote><p>Wow wow paaleehchee!! Nice web-application :).</p><small>Natalia Sulimova</small><a href="https://vk.com/id9383149">www.vk.com</a></blockquote>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="single-client">
                            <div class="media">
                                <img class="pull-left" src="resources/index/images/clients/client3.jpg" alt="">
                                <div class="media-body">
                                    <blockquote><p>Site like a candy! I'll be your partner soon!</p><small>Oleg Galepa</small><a href="https://vk.com/id58454266">www.vk.com</a></blockquote>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="single-client">
                            <div class="media">
                                <img class="pull-left" src="resources/index/images/clients/client4.jpg" alt="">
                                <div class="media-body">
                                    <blockquote><p>Omg wtf wat? You'll create my own site. Plzzzzzzzz!!!</p><small>Andrii Guseinov</small><a href="https://vk.com/id84728294">www.vk.com</a></blockquote>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="single-client">
                            <div class="media">
                                <img class="pull-left" src="resources/index/images/clients/client5.jpg" alt="">
                                <div class="media-body">
                                    <blockquote><p>Great job buddy! I like it!! Ez!</p><small>Tymofii Iakovliev</small><a href="https://vk.com/timko_apxi">www.vk.com</a></blockquote>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!--/#clients-->

<section id="blog">

    <div class="container">
        <div class="row text-center clearfix">
            <div class="col-sm-8 col-sm-offset-2">
                <h2 class="title-one">Hot Propisitions</h2>
                <p class="blog-heading">Here are our hot propositions. They working in semi-automatic mode, which means you order ready flight adventure, but taxi and hotels you chose manually(sometimes/maybe). Enjoy and have a nice adventure :) ! </p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <div class="single-blog">
                    <img src="resources/index/images/blog/1.jpg" alt="" />
                    <h2>Paris Hot Import 7 Nights</h2>
                    <ul class="post-meta">
                        <li><i class="fa fa-pencil-square-o"></i><strong> Posted By:</strong> Andrew</li>
                        <li><i class="fa fa-clock-o"></i><strong> Posted On:</strong> Jan 20 2017</li>
                    </ul>
                    <div class="blog-content">
                        <p>We offer you a greet week in Paris in 5 stars Hotel for two. Best service, best taxi from airport to hotel included.</p>
                    </div>
                    <a href="" class="btn btn-primary" data-toggle="modal" data-target="#blog-detail">Read More</a>
                </div>
                <div class="modal fade" id="blog-detail" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body" >
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <img src="resources/index/images/blog/1.jpg" alt="" />
                                <h2>Paris Hot Import 7 Nights</h2>
                                <p>Depature:     <strong>From Kiev</strong></p>
                                <p>Arriving:     <strong>to Paris (with back way)</strong>.</p>
                                <p>Flight class: <strong>First Class</strong>.</p>
                                <p>Company:      <strong>Air France</strong>.</p>
                                <p>Price:        <strong>300$</strong></p>
                                <h1></h1>
                                <p>Hotel:        <strong>"Malibu"</strong> 5 stars.</p>
                                <p>Rooms:        <strong>2</strong></p>
                                <p>Price:        <strong>500$</strong></p>
                                <h1></h1>
                                <p>Company:      <strong>Uklon</strong></p>
                                <p>Car:          <strong>Audi</strong></p>
                                <p>Car type:     <strong>Universal</strong></p>
                                <p>Price:        <strong>100$</strong></p>
                                <h1></h1>
                                <p>Total:        <strong>900$</strong></p>
                                <c:url value="/neworder" var="regUrl" />
                                <form role="form" action="${regUrl}" method="post" class="f1">
                                    <select class="modal" id="way" name="way">
                                        <option value="kiev-paris-kiev"></option>
                                    </select>
                                    <select class="modal" id="code" name="code">
                                        <option value="eu-asu-fkf"></option>
                                    </select>
                                    <select class="modal" id="city" name="city">
                                        <option value="Paris-back"></option>
                                    </select>
                                    <select class="modal" id="flightClass" name="flightClass">
                                        <option value="first"></option>
                                    </select>
                                    <select class="modal" id="company" name="company">
                                        <option value="air-france"></option>
                                    </select>
                                    <select class="modal" id="flightPrice" name="flightPrice">
                                        <option value="300$"></option>
                                    </select>
                                    <select class="modal" id="hotelName" name="hotelName">
                                        <option value="Malibu"></option>
                                    </select>
                                    <select class="modal" id="hotelType" name="hotelType">
                                        <option value="5 stars"></option>
                                    </select>
                                    <select class="modal" id="amountOfRooms" name="amountOfRooms">
                                        <option value="2"></option>
                                    </select>
                                    <select class="modal" id="hotelPrice" name="hotelPrice">
                                        <option value="500$"></option>
                                    </select>
                                    <select class="modal" id="taxiCompany" name="taxiCompany">
                                        <option value="uklon"></option>
                                    </select>
                                    <select class="modal" id="taxiName" name="taxiName">
                                        <option value="audi"></option>
                                    </select>
                                    <select class="modal" id="taxiType" name="taxiType">
                                        <option value="universal"></option>
                                    </select>
                                    <select class="modal" id="taxiPrice" name="taxiPrice">
                                        <option value="100$"></option>
                                    </select>
                                    <select class="modal" id="totalPrice" name="totalPrice">
                                        <option value="900$"></option>
                                    </select>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-first-name">First name</label>
                                        <input type="text" name="userName" placeholder="Enter your name..." class="f1-first-name form-control" id="f1-first-name">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-last-name">Last name</label>
                                        <input type="text" name="userSurname" placeholder="Enter your last name..." class="f1-last-name form-control" id="f1-last-name">
                                    </div>
                                    <h1></h1>
                                    <div>
                                        <button type="submit" name="submit" class="btn btn-primary">Buy 900$</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="single-blog">
                    <img src="resources/index/images/blog/2.jpg" alt="" />
                    <h2>New York Great weekend</h2>
                    <ul class="post-meta">
                        <li><i class="fa fa-pencil-square-o"></i><strong> Posted By:</strong> Andrew</li>
                        <li><i class="fa fa-clock-o"></i><strong> Posted On:</strong> Jan 20 2017</li>
                    </ul>
                    <div class="blog-content">
                        <p>We offer you a greet weekend in New York in 3 stars Hotel for 5 buddies. Nice service, great taxi support all the weekend included.</p>
                    </div>
                    <a href="" class="btn btn-primary" data-toggle="modal" data-target="#blog-two">Read More</a>
                </div>
                <div class="modal fade" id="blog-two" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body" >
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <img src="resources/index/images/blog/2.jpg" alt="" />
                                <h2>Paris Hot Import 7 Nights</h2>
                                <p>Depature:     <strong>From Kiev</strong></p>
                                <p>Arriving:     <strong>to New York (with back way)</strong>.</p>
                                <p>Flight class: <strong>First Class</strong>.</p>
                                <p>Company:      <strong>KLM</strong>.</p>
                                <p>Price:        <strong>400$</strong></p>
                                <h1></h1>
                                <p>Hotel:        <strong>"Arragorn"</strong> 3 stars.</p>
                                <p>Rooms:        <strong>5</strong></p>
                                <p>Price:        <strong>650$</strong></p>
                                <h1></h1>
                                <p>Company:      <strong>838</strong></p>
                                <p>Car:          <strong>Rolls Roys</strong></p>
                                <p>Car type:     <strong>Limo</strong></p>
                                <p>Price:        <strong>250$</strong></p>
                                <h1></h1>
                                <p>Total:        <strong>1300$</strong></p>
                                <c:url value="/neworder" var="regUrl" />
                                <form role="form" action="${regUrl}" method="post" class="f1">
                                    <select class="modal" id="way" name="way">
                                        <option value="kiev-newyork-kiev"></option>
                                    </select>
                                    <select class="modal" id="code" name="code">
                                        <option value="us-asu-kuk"></option>
                                    </select>
                                    <select class="modal" id="city" name="city">
                                        <option value="NewYork-back"></option>
                                    </select>
                                    <select class="modal" id="flightClass" name="flightClass">
                                        <option value="first"></option>
                                    </select>
                                    <select class="modal" id="company" name="company">
                                        <option value="klm"></option>
                                    </select>
                                    <select class="modal" id="flightPrice" name="flightPrice">
                                        <option value="400$"></option>
                                    </select>
                                    <select class="modal" id="hotelName" name="hotelName">
                                        <option value="Arragorn"></option>
                                    </select>
                                    <select class="modal" id="hotelType" name="hotelType">
                                        <option value="3 stars"></option>
                                    </select>
                                    <select class="modal" id="amountOfRooms" name="amountOfRooms">
                                        <option value="5"></option>
                                    </select>
                                    <select class="modal" id="hotelPrice" name="hotelPrice">
                                        <option value="650$"></option>
                                    </select>
                                    <select class="modal" id="taxiCompany" name="taxiCompany">
                                        <option value="838"></option>
                                    </select>
                                    <select class="modal" id="taxiName" name="taxiName">
                                        <option value="Rolls Roys"></option>
                                    </select>
                                    <select class="modal" id="taxiType" name="taxiType">
                                        <option value="limo"></option>
                                    </select>
                                    <select class="modal" id="taxiPrice" name="taxiPrice">
                                        <option value="250$"></option>
                                    </select>
                                    <select class="modal" id="totalPrice" name="totalPrice">
                                        <option value="1300$"></option>
                                    </select>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-first-name">First name</label>
                                        <input type="text" name="userName" placeholder="Enter your name..." class="f1-first-name form-control" id="f1-first-name">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-last-name">Last name</label>
                                        <input type="text" name="userSurname" placeholder="Enter your last name..." class="f1-last-name form-control" id="f1-last-name">
                                    </div>
                                    <h1></h1>
                                    <div>
                                        <button type="submit" name="submit" class="btn btn-primary">Buy 1300$</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="single-blog">
                    <img src="resources/index/images/blog/3.jpg" alt="" />
                    <h2>Sydney Best weekend</h2>
                    <ul class="post-meta">
                        <li><i class="fa fa-pencil-square-o"></i><strong> Posted By:</strong> Andrew</li>
                        <li><i class="fa fa-clock-o"></i><strong> Posted On:</strong> Jan 20 2017</li>
                    </ul>
                    <div class="blog-content">
                        <p>We offer you the best weekend in Sydney ever in 5 stars "Amora". Luxury service, hot parties 24/7, great taxi support all the weekend included.</p>
                    </div>
                    <a href="" class="btn btn-primary" data-toggle="modal" data-target="#blog-three">Read More</a>
                </div>
                <div class="modal fade" id="blog-three" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body" >
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <img src="resources/index/images/blog/3.jpg" alt="" />
                                <h2>Sydney Best weekend ever</h2>
                                <p>Depature:     <strong>From Kiev</strong></p>
                                <p>Arriving:     <strong>to Sydney (with back way)</strong>.</p>
                                <p>Flight class: <strong>Vip Class</strong>.</p>
                                <p>Company:      <strong>Turkish Airlines</strong>.</p>
                                <p>Price:        <strong>600$</strong></p>
                                <h1></h1>
                                <p>Hotel:        <strong>"Amora"</strong> 5 stars.</p>
                                <p>Rooms:        <strong>1</strong></p>
                                <p>Price:        <strong>600$</strong></p>
                                <h1></h1>
                                <p>Company:      <strong>Hot Wheels</strong></p>
                                <p>Car:          <strong>Merscedess</strong></p>
                                <p>Car type:     <strong>Sydane</strong></p>
                                <p>Price:        <strong>300$</strong></p>
                                <h1></h1>
                                <p>Total:        <strong>1500$</strong></p>
                                <c:url value="/neworder" var="regUrl" />
                                <form role="form" action="${regUrl}" method="post" class="f1">
                                    <select class="modal" id="way" name="way">
                                        <option value="kiev-sydney-kiev"></option>
                                    </select>
                                    <select class="modal" id="code" name="code">
                                        <option value="sy-asu-ksk"></option>
                                    </select>
                                    <select class="modal" id="city" name="city">
                                        <option value="Sydney-back"></option>
                                    </select>
                                    <select class="modal" id="flightClass" name="flightClass">
                                        <option value="vip"></option>
                                    </select>
                                    <select class="modal" id="company" name="company">
                                        <option value="turkish-airlines"></option>
                                    </select>
                                    <select class="modal" id="flightPrice" name="flightPrice">
                                        <option value="600$"></option>
                                    </select>
                                    <select class="modal" id="hotelName" name="hotelName">
                                        <option value="Amora"></option>
                                    </select>
                                    <select class="modal" id="hotelType" name="hotelType">
                                        <option value="5 stars"></option>
                                    </select>
                                    <select class="modal" id="amountOfRooms" name="amountOfRooms">
                                        <option value="1"></option>
                                    </select>
                                    <select class="modal" id="hotelPrice" name="hotelPrice">
                                        <option value="600$"></option>
                                    </select>
                                    <select class="modal" id="taxiCompany" name="taxiCompany">
                                        <option value="hotwheels"></option>
                                    </select>
                                    <select class="modal" id="taxiName" name="taxiName">
                                        <option value="merscedss"></option>
                                    </select>
                                    <select class="modal" id="taxiType" name="taxiType">
                                        <option value="sydane"></option>
                                    </select>
                                    <select class="modal" id="taxiPrice" name="taxiPrice">
                                        <option value="300$"></option>
                                    </select>
                                    <select class="modal" id="totalPrice" name="totalPrice">
                                        <option value="1500$"></option>
                                    </select>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-first-name">First name</label>
                                        <input type="text" name="userName" placeholder="Enter your name..." class="f1-first-name form-control" id="f1-first-name">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-last-name">Last name</label>
                                        <input type="text" name="userSurname" placeholder="Enter your last name..." class="f1-last-name form-control" id="f1-last-name">
                                    </div>
                                    <h1></h1>
                                    <div>
                                        <button type="submit" name="submit" class="btn btn-primary">Buy 1500$</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="single-blog">
                    <img src="resources/index/images/blog/4.jpg" alt="" />
                    <h2>Egypt 7 days econom trial</h2>
                    <ul class="post-meta">
                        <li><i class="fa fa-pencil-square-o"></i><strong> Posted By:</strong> Andrew</li>
                        <li><i class="fa fa-clock-o"></i><strong> Posted On:</strong> Jan 20 2017</li>
                    </ul>
                    <div class="blog-content">
                        <p>We offer you a lovely econom trial in Egypt in 3 stars Hotel for 3 family. Good service, great taxi support from/to airport included.</p>
                    </div>
                    <a href="" class="btn btn-primary" data-toggle="modal" data-target="#blog-four">Read More</a>
                </div>
                <div class="modal fade" id="blog-four" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body" >
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <img src="resources/index/images/blog/4.jpg" alt="" />
                                <h2>Paris Hot 7 days trial</h2>
                                <p>Depature:     <strong>From Kiev</strong></p>
                                <p>Arriving:     <strong>to Egypt (with back way)</strong>.</p>
                                <p>Flight class: <strong>Second Class</strong>.</p>
                                <p>Company:      <strong>KLM</strong>.</p>
                                <p>Price:        <strong>300$</strong></p>
                                <h1></h1>
                                <p>Hotel:        <strong>"Piramyde"</strong> 3 stars.</p>
                                <p>Rooms:        <strong>3</strong></p>
                                <p>Price:        <strong>350$</strong></p>
                                <h1></h1>
                                <p>Company:      <strong>Uklon</strong></p>
                                <p>Car:          <strong>Shevrolet</strong></p>
                                <p>Car type:     <strong>Cupe</strong></p>
                                <p>Price:        <strong>50$</strong></p>
                                <h1></h1>
                                <p>Total:        <strong>700$</strong></p>
                                <c:url value="/neworder" var="regUrl" />
                                <form role="form" action="${regUrl}" method="post" class="f1">
                                    <select class="modal" id="way" name="way">
                                        <option value="kiev-egypt-kiev"></option>
                                    </select>
                                    <select class="modal" id="code" name="code">
                                        <option value="af-asu-kek"></option>
                                    </select>
                                    <select class="modal" id="city" name="city">
                                        <option value="Egypt-back"></option>
                                    </select>
                                    <select class="modal" id="flightClass" name="flightClass">
                                        <option value="second"></option>
                                    </select>
                                    <select class="modal" id="company" name="company">
                                        <option value="turkish-airlines"></option>
                                    </select>
                                    <select class="modal" id="flightPrice" name="flightPrice">
                                        <option value="300$"></option>
                                    </select>
                                    <select class="modal" id="hotelName" name="hotelName">
                                        <option value="Piramyde"></option>
                                    </select>
                                    <select class="modal" id="hotelType" name="hotelType">
                                        <option value="3 stars"></option>
                                    </select>
                                    <select class="modal" id="amountOfRooms" name="amountOfRooms">
                                        <option value="3"></option>
                                    </select>
                                    <select class="modal" id="hotelPrice" name="hotelPrice">
                                        <option value="350$"></option>
                                    </select>
                                    <select class="modal" id="taxiCompany" name="taxiCompany">
                                        <option value="uklon"></option>
                                    </select>
                                    <select class="modal" id="taxiName" name="taxiName">
                                        <option value="Shevrolete"></option>
                                    </select>
                                    <select class="modal" id="taxiType" name="taxiType">
                                        <option value="cupe"></option>
                                    </select>
                                    <select class="modal" id="taxiPrice" name="taxiPrice">
                                        <option value="50$"></option>
                                    </select>
                                    <select class="modal" id="totalPrice" name="totalPrice">
                                        <option value="700$"></option>
                                    </select>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-first-name">First name</label>
                                        <input type="text" name="userName" placeholder="Enter your name..." class="f1-first-name form-control" id="f1-first-name">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-last-name">Last name</label>
                                        <input type="text" name="userSurname" placeholder="Enter your last name..." class="f1-last-name form-control" id="f1-last-name">
                                    </div>
                                    <h1></h1>
                                    <div>
                                        <button type="submit" name="submit" class="btn btn-primary">Buy 700$</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="single-blog">
                    <img src="resources/index/images/blog/5.jpg" alt="" />
                    <h2>Tokyo on fire!</h2>
                    <ul class="post-meta">
                        <li><i class="fa fa-pencil-square-o"></i><strong> Posted By:</strong> Andrew</li>
                        <li><i class="fa fa-clock-o"></i><strong> Posted On:</strong> Jan 20 2017</li>
                    </ul>
                    <div class="blog-content">
                        <p>We offer you a hot weekend in Tokyo in best Hostel for 5 buddies. Great colours, hot nights, best places guarantied. Taxi icluded.</p>
                    </div>
                    <a href="" class="btn btn-primary" data-toggle="modal" data-target="#blog-six">Read More</a>
                </div>
                <div class="modal fade" id="blog-six" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body" >
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <img src="resources/index/images/blog/5.jpg" alt="" />
                                <h2>Tokyo on fire!</h2>
                                <p>Depature:     <strong>From Kiev</strong></p>
                                <p>Arriving:     <strong>to Tokyo (with back way)</strong>.</p>
                                <p>Flight class: <strong>Second Class</strong>.</p>
                                <p>Company:      <strong>MAU</strong>.</p>
                                <p>Price:        <strong>300$</strong></p>
                                <h1></h1>
                                <p>Hostel:       <strong>"Dragon"</strong></p>
                                <p>Rooms:        <strong>5</strong></p>
                                <p>Price:        <strong>400$</strong></p>
                                <h1></h1>
                                <p>Company:      <strong>Azaza</strong></p>
                                <p>Car:          <strong>Cadilac</strong></p>
                                <p>Car type:     <strong>Cupe</strong></p>
                                <p>Price:        <strong>100$</strong></p>
                                <h1></h1>
                                <p>Total:        <strong>800$</strong></p>
                                <c:url value="/neworder" var="regUrl" />
                                <form role="form" action="${regUrl}" method="post" class="f1">
                                    <select class="modal" id="way" name="way">
                                        <option value="kiev-tokyo-kiev"></option>
                                    </select>
                                    <select class="modal" id="code" name="code">
                                        <option value="as-asu-ktk"></option>
                                    </select>
                                    <select class="modal" id="city" name="city">
                                        <option value="Tokyo-back"></option>
                                    </select>
                                    <select class="modal" id="flightClass" name="flightClass">
                                        <option value="second"></option>
                                    </select>
                                    <select class="modal" id="company" name="company">
                                        <option value="mau"></option>
                                    </select>
                                    <select class="modal" id="flightPrice" name="flightPrice">
                                        <option value="300$"></option>
                                    </select>
                                    <select class="modal" id="hotelName" name="hotelName">
                                        <option value="Dragon"></option>
                                    </select>
                                    <select class="modal" id="hotelType" name="hotelType">
                                        <option value="hostel"></option>
                                    </select>
                                    <select class="modal" id="amountOfRooms" name="amountOfRooms">
                                        <option value="5"></option>
                                    </select>
                                    <select class="modal" id="hotelPrice" name="hotelPrice">
                                        <option value="400$"></option>
                                    </select>
                                    <select class="modal" id="taxiCompany" name="taxiCompany">
                                        <option value="azaza"></option>
                                    </select>
                                    <select class="modal" id="taxiName" name="taxiName">
                                        <option value="Cadilac"></option>
                                    </select>
                                    <select class="modal" id="taxiType" name="taxiType">
                                        <option value="cupe"></option>
                                    </select>
                                    <select class="modal" id="taxiPrice" name="taxiPrice">
                                        <option value="100$"></option>
                                    </select>
                                    <select class="modal" id="totalPrice" name="totalPrice">
                                        <option value="800$"></option>
                                    </select>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-first-name">First name</label>
                                        <input type="text" name="userName" placeholder="Enter your name..." class="f1-first-name form-control" id="f1-first-name">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-last-name">Last name</label>
                                        <input type="text" name="userSurname" placeholder="Enter your last name..." class="f1-last-name form-control" id="f1-last-name">
                                    </div>
                                    <h1></h1>
                                    <div>
                                        <button type="submit" name="submit" class="btn btn-primary">Buy 800$</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="single-blog">
                    <img src="resources/index/images/blog/6.jpg" alt="" />
                    <h2>Barcelona 3 weeks live!</h2>
                    <ul class="post-meta">
                        <li><i class="fa fa-pencil-square-o"></i><strong> Posted By:</strong> Andrew</li>
                        <li><i class="fa fa-clock-o"></i><strong> Posted On:</strong> Jan 20 2017</li>
                    </ul>
                    <div class="blog-content">
                        <p>Stay in Barcelona 3 weeks with your second half and you'll remember it forever! All the best views and parties are waiting for you. Taxi included.</p>
                    </div>
                    <a href="" class="btn btn-primary" data-toggle="modal" data-target="#blog-seven">Read More</a>
                </div>
                <div class="modal fade" id="blog-seven" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body" >
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <img src="resources/index/images/blog/6.jpg" alt="" />
                                <h2>Barcelona 3 weeks live and fire!</h2>
                                <p>Depature:     <strong>From Kiev</strong></p>
                                <p>Arriving:     <strong>to Barcelona (with back way)</strong>.</p>
                                <p>Flight class: <strong>First Class</strong>.</p>
                                <p>Company:      <strong>Air France</strong>.</p>
                                <p>Price:        <strong>300$</strong></p>
                                <h1></h1>
                                <p>Hotel:        <strong>"Bull"</strong> 5 stars.</p>
                                <p>Rooms:        <strong>1</strong></p>
                                <p>Price:        <strong>2700$</strong></p>
                                <h1></h1>
                                <p>Company:      <strong>Hot Wheels</strong></p>
                                <p>Car:          <strong>Rolls Roys</strong></p>
                                <p>Car type:     <strong>Limo</strong></p>
                                <p>Price:        <strong>750$</strong></p>
                                <h1></h1>
                                <p>Total:        <strong>3750$</strong></p>
                                <c:url value="/neworder" var="regUrl" />
                                <form role="form" action="${regUrl}" method="post" class="f1">
                                    <select class="modal" id="way" name="way">
                                        <option value="kiev-barcelona-kiev"></option>
                                    </select>
                                    <select class="modal" id="code" name="code">
                                        <option value="eu-asu-kbk"></option>
                                    </select>
                                    <select class="modal" id="city" name="city">
                                        <option value="Barcelona-back"></option>
                                    </select>
                                    <select class="modal" id="flightClass" name="flightClass">
                                        <option value="first"></option>
                                    </select>
                                    <select class="modal" id="company" name="company">
                                        <option value="airfrance"></option>
                                    </select>
                                    <select class="modal" id="flightPrice" name="flightPrice">
                                        <option value="300$"></option>
                                    </select>
                                    <select class="modal" id="hotelName" name="hotelName">
                                        <option value="Bull"></option>
                                    </select>
                                    <select class="modal" id="hotelType" name="hotelType">
                                        <option value="5 stars"></option>
                                    </select>
                                    <select class="modal" id="amountOfRooms" name="amountOfRooms">
                                        <option value="1"></option>
                                    </select>
                                    <select class="modal" id="hotelPrice" name="hotelPrice">
                                        <option value="2700$"></option>
                                    </select>
                                    <select class="modal" id="taxiCompany" name="taxiCompany">
                                        <option value="hotwheels"></option>
                                    </select>
                                    <select class="modal" id="taxiName" name="taxiName">
                                        <option value="Rolls Roys"></option>
                                    </select>
                                    <select class="modal" id="taxiType" name="taxiType">
                                        <option value="limo"></option>
                                    </select>
                                    <select class="modal" id="taxiPrice" name="taxiPrice">
                                        <option value="750$"></option>
                                    </select>
                                    <select class="modal" id="totalPrice" name="totalPrice">
                                        <option value="3750$"></option>
                                    </select>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-first-name">First name</label>
                                        <input type="text" name="userName" placeholder="Enter your name..." class="f1-first-name form-control" id="f1-first-name">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="f1-last-name">Last name</label>
                                        <input type="text" name="userSurname" placeholder="Enter your last name..." class="f1-last-name form-control" id="f1-last-name">
                                    </div>
                                    <h1></h1>
                                    <div>
                                        <button type="submit" name="submit" class="btn btn-primary">Buy 3750$</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> <!--/#blog-->

<section id="contact">
    <div class="container">
        <div class="row text-center clearfix">
            <div class="col-sm-8 col-sm-offset-2">
                <div class="contact-heading">
                    <h2 class="title-one">Contact With Us</h2>
                    <p>We are awaiting for your propositions and comments. Thanks for visiting my test diploma creation! Hope you'll enjoy it! :)</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="contact-details">
            <div class="pattern"></div>
            <div class="row text-center clearfix">
                <div class="col-sm-6">
                    <div class="contact-address"><address><p><span>Avia</span>SalesUA</p><strong>Kiev, Ukraine<br>Andrew TW<br>==>Andrii Trokhymchuk<==</strong><br><small>(for |Prog Kiev UA| Diploma work testing web-application)</small></address>
                        <div class="social-icons">
                            <a href="https://www.facebook.com/retropalladin"><i class="fa fa-facebook"></i></a>
                            <a href="https://vk.com/rocket_____bunny"><i class="fa fa-vk"></i></a>
                            <a href="https://www.linkedin.com/in/andrii-trokhymchuk-31b775133?trk=hp-identity-name"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div id="contact-form-section">
                        <div class="status alert alert-success" style="display: none"></div>
                        <form id="contact-form" method="post" class="contact" name="contact-form" action="/feedback-success" >
                            <div class="form-group">
                                <input type="text" name="name" class="form-control name-field" required="required" value="${login}" placeholder="Your Login or Name"></div>
                            <div class="form-group">
                                <input type="email" name="email" class="form-control mail-field" required="required" value="${email}" placeholder="Your Email">
                            </div>
                            <div class="form-group">
                                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" name="submit" class="btn btn-primary">Send</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> <!--/#contact-->

<footer id="footer">
    <div class="container">
        <div class="text-center">
            <p>Copyright &copy; 2017 - <a href="https://vk.com/rocket_____bunny">Andrew TW</a> | All Rights Reserved</p>
        </div>
    </div>
</footer> <!--/#footer-->

<script type="text/javascript" src="resources/index/js/jquery.js"></script>
<script type="text/javascript" src="resources/index/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/index/js/smoothscroll.js"></script>
<script type="text/javascript" src="resources/index/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="resources/index/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="resources/index/js/jquery.parallax.js"></script>
<script type="text/javascript" src="resources/index/js/main.js"></script>

</body>
</html>

