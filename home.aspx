﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Chartwells</title>
    
    <!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/prettyPhoto.css" rel="stylesheet"/>
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>
    <link href="css/responsive.css" rel="stylesheet"/>
    
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png"/>
</head><!--/head-->

<body>
     
     <header id="header" >
        <nav class="navbar navbar-inverse" role="banner" style="background-color:maroon">
            <div class="container">
                   <div id="logo">
                      <img src="images/TAMU.png" style="background-color:#5d0f0f" />
                   </div>
            </div>
        </nav>

    </header>
    <form runat="server">
    <section class="pricing-page">
        <div class="container">
           <div class="center"> 
               <br />
                <h2 style="padding-top:20px">Employee Details</h2>
                  </div>  
            <div class="pricing-area text-center">
                <div class="row">
                    <div class="col-sm-4 plan price-one wow fadeInDown">
                        <ul>
                            <li class="heading-one">
                                <h1>Full Name</h1>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            
                        </ul>
                    </div>

                    <div class="col-sm-4 plan price-two wow fadeInDown">
                        <ul>
                            <li class="heading-two">
                                <h1>Phone</h1>
                                
                            </li>
                            <li>10 Gb Disk Space</li>
                            <li>2GB Dadicated Ram</li>
                            <li>20 Addon Domain</li>
                            <li>20 Email Account</li>
                            <li>24/7 Support</li>
                           
                            <li class="plan-action">
                                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Add Employee" />
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-4 plan price-three wow fadeInDown">
                        <img src="images/ribon_one.png"/>
                        <ul>
                            <li class="heading-three">
                                <h1>E-Mail</h1>
                                
                            </li>
                            <li>50 Gb Disk Space</li>
                            <li>8GB Dadicated Ram</li>
                            <li>Unlimited Addon Domain</li>
                            <li>Unlimited Email Account</li>
                            <li>24/7 Support</li>
                           
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-3 plan price-four wow fadeInDown">
                        <ul>
                            <li class="heading-four">
                                <h1>Basic</h1>
                                <span>$3/Month</span>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-3 plan price-five wow fadeInDown">
                        <ul>
                            <li class="heading-five">
                                <h1>Standerd</h1>
                                <span>$6/Month</span>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-3 plan price-six wow fadeInDown">
                         <img src="images/ribon_two.png"/>
                        <ul>
                            <li class="heading-six">
                                <h1>Premium</h1>
                                <span>$12/Month</span>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>

                     <div class="col-sm-6 col-md-3 plan price-seven wow fadeInDown">
                        <ul>
                            <li class="heading-seven">
                                <h1>Developer</h1>
                                <span>$19/Month</span>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div><!--/pricing-area-->
        </div><!--/container-->
    </section><!--/pricing-page-->
           
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Email Marketing</a></li>
                            <li><a href="#">Plugin Development</a></li>
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>
                            <li><a href="#">Exercitation</a></li>
                            <li><a href="#">Ullamco</a></li>
                            <li><a href="#">Laboris</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
            </div>
        </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->
    </form>
    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        <!--   $('.carousel').carousel()-->
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
    </body>
</html>
