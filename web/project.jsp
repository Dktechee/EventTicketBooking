<%-- 
    Document   : project
    Created on : 31 May, 2023, 6:35:48 AM
    Author     : DINESH RITHEESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <title>Event Management</title>
            <link rel="stylesheet" href="Css/style.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
        </head>
        <body>
            <!---navbar------------------------------------------->
            <nav>
                <div class="log">
                    <p style="font-size: larger">Event-Handler</p>
                </div>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Explore</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="Login.html">Login</a></li>
                    <li><a href="Registertion form.html">Register</a></li>
                    <li class="search-icon">
                        <input type="search" placeholder="Search Here..,">
                        <label class="icon"> <span class="fa fa-search"></span></label>   
                    </li>
                </ul> 
            </nav>
            <!--banner image--------------------------------->
            <!--<div class="banner-card"> 
                <img src="images/background 5.jpg">
           <div class="banner-text">
                <h1>Book Your Event</h1>
                <button ><a href="#" >Get-Started</a></button>
            </div>
             
            </div>
            <br>
            <br>-->

            <div class="container">
                <div class="swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        <div class="swiper-slide"><img src="images/images/aCONosSy-desktop_icon.webp" alt="no image"></div>
                        <div class="swiper-slide"><img src="images/images/C2kutUsh-desktop_icon.webp" alt="no image"></div>
                        <div class="swiper-slide"><img src="images/images/qh1Uc8og-desktop_icon.webp"alt="no image"></div>

                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>   
                </div>
            </div>
            <!--Scriptin tag-->
            <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

            <!--Script-->
            <script>
                const swiper = new Swiper('.swiper', {
                    autoplay: {
                        delay: 3000,
                        disableonInteraction: false,
                    },
                    loop: true,
                    pagination: {
                        el: '.swiper-pagination',
                        clickable: true,
                    },
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },
                });
            </script>
            <!---Script2-->
            <script>
                var swiper1 = new Swiper(".mySwiper", {
                    effect: "coverflow",
                    grabCursor: true,
                    centeredSlides: true,
                    slidesPerView: "auto",
                    coverflowEffect: {
                        rotate: 50,
                        stretch: 0,
                        depth: 100,
                        modifier: 1,
                        slideShadows: true,
                    },
                    pagination: {
                        el: ".swiper-pagination",
                    },
                });
            </script>

            <!---grid image slider-->

            <div class="contain">

                <div class="grid">

                    <div class="grid-item">
                        <div class="card">
                            <img src="images/images/edm image.jpg" alt="no pic">
                            <div class="card-content">
                                <h1 class="card-header">EDM Concert</h1>
                                <p class="card-text"> Come and Join us for an amazing EDM concert With Ed
                                    Sheeran</p>
                                <button class="card-bttn">
                                    Vist<span>&rarr;</span>
                                </button>
                            </div>


                        </div>
                    </div>


                    <div class="grid-item">

                        <div class="card">
                            <img src="images/images/magic show.jpg" alt="no pic">
                            <div class="card-content">
                                <h1 class="card-header">Magic Show</h1>
                                <p class="card-text"> Experience The Real Magic Show With The living Wizard David Copperfield</p>
                                <button class="card-bttn">
                                    Vist<span>&rarr;</span>
                                </button>
                            </div>


                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="card">
                            <img src="images/images/circus.jpg" alt="no pic">
                            <div class="card-content">
                                <h1 class="card-header">Circus </h1>
                                <p class="card-text"> Come One,Come All...We'll Enjoy the Evening with laugh and Joy With Circus</p>
                                <button class="card-bttn">
                                    Vist<span>&rarr;</span>
                                </button>
                            </div>


                        </div>
                    </div>
                </div>
            </div>

            <h3>Explore The Events</h3>
            <!--- slider images-------------------------------------------------------------------------------------------->
            <div class="swiper1 mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide1">
                        <div class="box">
                            <div class="slide-img">
                                <img src="images/images/Mon-cbe.jpg" alt="none">
                                <div class="overlay">
                                    <a  href="#" class="explore-btn">Explore-Now</a>
                                </div>
                            </div>
                            <div class="detail-box">
                                <div class="type">
                                    <a href="#">Coimbatore</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide1">
                        <div class="box">
                            <div class="slide-img">
                                <img src="images/images/Mon-chennai.jpg" alt="none">
                                <div class="overlay">
                                    <a  href="#" class="explore-btn">Explore-Now</a>
                                </div>
                            </div>
                            <div class="detail-box">
                                <div class="type">
                                    <a href="#">Chennai</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide1">
                        <div class="box">
                            <div class="slide-img">
                                <img src="images/images/Mon-Salem.jpg" alt="none">
                                <div class="overlay">
                                    <a  href="#" class="explore-btn">Explore-Now</a>
                                </div>
                            </div>
                            <div class="detail-box">
                                <div class="type">
                                    <a href="#">Salem</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide1">
                        <div class="box">
                            <div class="slide-img">
                                <img src="images/images/Mon-tanjore.jpg" alt="none">
                                <div class="overlay">
                                    <a  href="#" class="explore-btn">Explore-Now</a>
                                </div>
                            </div>
                            <div class="detail-box">
                                <div class="type">
                                    <a href="#">Tanjore</a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="swiper-slide1">
                        <div class="box">
                            <div class="slide-img">
                                <img src="images/images/Mon-tiruppur.jpg" alt="none">
                                <div class="overlay">
                                    <a  href="#" class="explore-btn">Explore-Now</a>
                                </div>
                            </div>
                            <div class="detail-box">
                                <div class="type">
                                    <a href="#">Tiruppur</a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="swiper-slide1">
                        <div class="box">
                            <div class="slide-img">
                                <img src="images/images/Mon-kanc.jpg" alt="none">
                                <div class="overlay">
                                    <a  href="#" class="explore-btn">Explore-Now</a>
                                </div>
                            </div>
                            <div class="detail-box">
                                <div class="type">
                                    <a href="#">Kancheepuram</a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="swiper-slide1">
                        <div class="box">
                            <div class="slide-img">
                                <img src="images/images/Mon-kaniya.jpg" alt="none">
                                <div class="overlay">
                                    <a  href="#" class="explore-btn">Explore-Now</a>
                                </div>
                            </div>
                            <div class="detail-box">
                                <div class="type">
                                    <a href="#">Kaniyakumari</a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="swiper-slide1">
                        <div class="box">
                            <div class="slide-img">
                                <img src="images/images/Mon-kodika.jpg" alt="none">
                                <div class="overlay">
                                    <a  href="#" class="explore-btn">Explore-Now</a>
                                </div>
                            </div>
                            <div class="detail-box">
                                <div class="type">
                                    <a href="#">Kodikanal</a>
                                </div>
                            </div>

                        </div>
                    </div>


                </div>
            </div>
            <!---Footer----------------------------------------------------------------------------------------------------> 
            <footer >
                <div class="footer-content">
                    <h3>Event-Handler</h3>
                    <p>Lorem ipsum dolor sit amet consectetur 
                        adipisicing elit. Nihil laudantium veniam 
                        quasi voluptate fugiat porro ex optio cum placeat ipsa, necessitatibus nobis esse delectus quis hic dolor, 
                        rerum dolore velit.</p>
                    <ul class="Socials">
                        <li><a href="#"> <i class="fa fa-facebook"></i></a></li>

                        <li><a href="#"> <i class="fa fa-youtube"></i></a></li>
                        <li><a href="#"> <i class="fa fa-instagram"></i></a></li>
                    </ul>

                </div>
                <div class="footer-bottom">
                    <p> copyright &copy;2023 Event-handler</p>
                </div>

            </footer>


        </body>

    </body>
</html>
