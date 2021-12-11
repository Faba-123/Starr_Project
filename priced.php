


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enrolled| Page</title>
    <script defer src="js/enrolledscript.js"></script>
    <script defer src="js/regex.js"></script>

     <!-- Google Font -->
     <link href="https://fonts.googleapis.com/css?family=Quantico:400,700&display=swap" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap" rel="stylesheet">
 
     <!-- Css Styles -->
     <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
     <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
     <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
     <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
     <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
     <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
     <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>

   
    <div class="col-lg-6 col-md-6">
        <div class="contact-form">
            <div id="error"></div>
            <h3>Book Appointment</h3>
            <form id = "form" method="POST" action="pricedback.php">
                <input  id = "name"  name ="name"  type="text" placeholder="Name" required>
                <input  id = "email" name ="email" type="text" placeholder="Email" required>
                <input  id = "num"   name ="num"  type="text" placeholder="Phone Number" required>
                <input  id ="price" name ="price" type="text" placeholder="Enter Service" required>
                <button type="submit" name = "submit" class="site-btn" value = "submit" >Submit</button>
                <span></span>
                <span></span>
            </form>
        </div>
        <div class="load-more-btn portfolio-btn">
            <a href="Payment.php">Click to make Payment</a>
        </div>
    </div>
    
     <!-- Footer Section Begin -->
     <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="fs-about">
                        <div class="fa-logo">
                            <a href="index.php">
                                <img src="img/about/vin-starr.jpg" alt="">
                            </a>
                        </div>
                        <p>STARR Agency is the right tool to help create andkeep your memories and help discover the art in you. Check us out 
                            on our various social media outlets.</p>
                        <div class="fa-social">
                            <a href="https://www.facebook.com/professionalphotographersclub/"><i class="fa fa-facebook"></i></a>
                            <a href="https://twitter.com/photography"><i class="fa fa-twitter"></i></a>
                            <a href="https://www.youtube.com/c/ghananiephotography"><i class="fa fa-youtube-play"></i></a>
                            <a href="https://www.instagram.com/focusnblur/?hl=en"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="fs-widget">
                        <h5>Instagram</h5>
                        <div class="fw-instagram">
                            <img src="img/instagram/insta-1.jpg" alt="">
                            <img src="img/instagram/insta-2.jpg" alt="">
                            <img src="img/instagram/insta-3.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="fs-widget">
                        <h5>Quick links</h5>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                        <ul>
                            <li><a href="gallery.html">Gallery</a></li>
                            <li><a href="portfolio.html">Portfolio</a></li>
                            <li><a href="services.html">Services</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="fs-widget">
                        <h5>Subscribe</h5>
                        <p>Subscribe to our weekly newsletter</p>
                        <div class="fw-subscribe">
                            <form action="#">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="copyright-text">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

</body>
</html>