
<%@page import="java.lang.String"%>
<%@page import="java.util.Iterator"%>
<%@page import="Database.DAO"%>
<%@page import="java.util.List"%>
<%@page import="Model.RegisterData"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Event Management</title>
        <link rel="stylesheet" href="Css/home.css">
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
                <li><a href="#">Blog</a></li>
                <li><a href="logout.html">LogOut</a></li>
                <li><a id="butn" href="#">Hi ' User</a></li>

                <li class="search-icon">
                    <input type="search" placeholder="Search Here..,">
                    <label class="icon"> <span class="fa fa-search"></span></label>   
                </li>

            </ul> 
        </nav>

        <div class="cont">
            <div class="swiper">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- Slides -->
                    <div class="swiper-slide"><img class="carousel"src="images/images/aCONosSy-desktop_icon.webp" alt="no image"></div>
                    <div class="swiper-slide"><img  class="carousel"src="images/images/C2kutUsh-desktop_icon.webp" alt="no image"></div>
                    <div class="swiper-slide"><img  class="carousel"src="images/images/qh1Uc8og-desktop_icon.webp"alt="no image"></div>

                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination"></div>
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>   
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
                var swiper2 = new Swiper(".mySwiper", {
                    effect: "coverflow",
                    grabCursor: true,
                    centeredSlides: true,
                    slidesPerView: "auto",
                    coverflowEffect: {
                        rotate: 50,
                        stretch: 0,
                        depth: 100,
                        modifier: 2,
                        slideShadows: true,
                    },
                    pagination: {
                        el: ".swiper-pagination",
                    },
                });
            </script>
        </div>


        <h2 style="margin-left: 412px;">Top Events</h2>
        <div class="wrapper">

            <div class="profile">

                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=499%>"><img src="images/images/andera.jpg"></a>
                    <h5 class="time">Sat,1 jul</h5>
                </div>
                <div class="details">
                    <h4>ANDERA JERMIAH</h4><BR>
                    <p>Hindusthan College of Arts And Science<br>
                        Rs:499 Onwards
                    </p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=249%>"><img src="images/images/faiyaa hussan.jpg"></a>
                    <h5 class="time">Sun,11 jun</h5>
                </div>
                <div class="details">
                    <h4>Faiyaaz Hussain</h4><BR>
                    <p>at 647 Community hall<br>
                        Rs:249 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=499%>"><img src="images/images/vineeth.jpg"></a>
                    <h5 class="time">Sun,2 jul</h5>
                </div>
                <div class="details">
                    <h4>Vineeth Sreenivasan</h4><BR>
                    <p>  Hindusthan College of Arts And Science<br>
                        Rs:499 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=400%>"><img src="images/images/meryvn.jpg"></a>
                    <h5 class="time">Sat,15 jul</h5>
                </div>
                <div class="details">
                    <h4>Moving On</h4><BR>
                    <p>  Hindusthan College of Arts And Science<br>
                        Rs:400 Onwards</p>
                </div>
            </div>
        </div>
        <h2 style="margin-left: 412px;">Best Events</h2>
        <div class="wrapper">
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=500%>"><img src="images/images/spb charan.jpg"></a>
                    <h5 class="time">Sat,17 jun</h5>
                </div>
                <div class="details">
                    <h4>SPB Charan</h4><BR>
                    <p>Mangarathchi Kalaiarangam<br>
                        Rs:500 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=399%>"><img src="images/images/supermayan.jpg"></a>
                    <h5 class="time">Sat,17 jun</h5>
                </div>
                <div class="details">
                    <h4>SuperMayan</h4><BR>
                    <p>Eat Alley Cafe<br>
                        Rs:399 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=1000%>"> <img src="images/images/pradeep.jpg"></a>
                    <h5 class="time">Sat,24 jun</h5>
                </div>
                <div class="details">
                    <h4>Paradeep Kumar</h4><BR>
                    <p>Sports Village<br>
                        Rs:1000 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=3750%>"><img src="images/images/sunburn.jpg"></a>
                    <h5 class="time">Thu,28 Dec</h5>
                </div>
                <div class="details">
                    <h4>Sunburn Goa 2023</h4><BR>
                    <p>venue to be announce<br>
                        Rs:3750 Onwards</p>
                </div>
            </div>

        </div>

        <div>
            <%
                String Username = (String) session.getAttribute("user");
                String Fullname = (String) session.getAttribute("fullname");
                String Phonenumber = (String) session.getAttribute("ph");
                String Email = (String) session.getAttribute("email");
                String gender = (String) session.getAttribute("gender");


            %>
            <div class="bg-modal">
                <div class="modal-content">
                    <div class="close">+</div>
                    <h1 class="form-title">User Account</h1>
                    <form name="register" method="post" action="#">
                        <div class="main-user-info">
                            <div class="user-input-box">

                                <label for="Fullname">Full Name</label>
                                <P><% out.println(Fullname);%></P>
                            </div>
                            <div class="user-input-box">
                                <label for="User Name">User Name</label>   
                                <p> <% out.println(Username);%></p>
                            </div>
                            <div class="user-input-box">
                                <label for="Email">Email</label>
                                <p><% out.println(Email);%></p>
                            </div>
                            <div class="user-input-box">
                                <label for="Phone number">Phone number</label>
                                <p><% out.println(Phonenumber);%></p>

                            </div>
                            <div class="user-input-box"> 
                                <label for="Gender">Gender</label>
                                <p><%out.println(gender);%></p>

                            </div>
                        </div>
                        <span class="ed">
                            <button type="submit" class="btn"><a id="spe" href="delete.html?user=<%= Username%>">Delete Account</a></button>
                            <button type="submit" class="btn"><a  id="spe" href="update.html?user=<%= Username%>">Edit Account</a></button>  
                        </span>
                    </form>

                </div>
            </div>

            <script>document.getElementById('butn').addEventListener('click', function () {

                    document.querySelector('.bg-modal').style.display = "flex";

                });
            </script>
            <script>
                document.querySelector('.close').addEventListener('click', function () {

                    document.querySelector('.bg-modal').style.display = "none";
                });
            </script>
        </div>

        <!---grid image slider-->

        <div class="contain">
            <h1>Popular Events</h1>
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
                            <button <a href="" class="card-bttn">
                                    Vist<span>&rarr;</span>
                            </button>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <h2 style="margin-left: 412px;"> Events</h2>
        <div class="wrapper">

            <div class="profile">

                <div class="silde-img">
                    <a href="book.html?Amount=<%=499%>"><img src="images/images/andera.jpg"></a>
                    <h5 class="time">Sat,1 jul</h5>
                </div>
                <div class="details">
                    <h4>ANERA JERMIAH</h4><BR>
                    <p>  Hindusthan College of Arts And Science<br>
                        Rs:499 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="book.html?Amount=<%=249%>"><img src="images/images/faiyaa hussan.jpg"></a>
                    <h5 class="time">Sat,1 jul</h5>
                </div>
                <div class="details">
                    <h4>Faiyaaz Hussain</h4><BR>
                    <p>at 647 Community hall<br>
                        Rs:249 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="book.html?Amount=<%=499%>"><img src="images/images/vineeth.jpg"></a>
                    <h5 class="time">Sat,1 jul</h5>
                </div>
                <div class="details">
                    <h4>Vineeth Sreenivasan</h4><BR>
                    <p>  Hindusthan College of Arts And Science<br>
                        Rs:499 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="book.html?Amount=<%=400%>"><img src="images/images/meryvn.jpg"></a>
                    <h5 class="time">Sat,1 jul</h5>
                </div>
                <div class="details">
                    <h4>Moving On</h4><BR>
                    <p>  Hindusthan College of Arts And Science<br>
                        Rs:400 Onwards</p>
                </div>
            </div>
        </div>

        <h2 style="margin-left: 412px;"> Events</h2>
        <div class="wrapper">
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=500%>"><img src="images/images/spb charan.jpg"></a>
                    <h5 class="time">Sat,17 jun</h5>
                </div>
                <div class="details">
                    <h4>SPB Charan</h4><BR>
                    <p>Mangarathchi Kalaiarangam<br>
                        Rs:500 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=399%>"><img src="images/images/supermayan.jpg"></a>
                    <h5 class="time">Sat,17 jun</h5>
                </div>
                <div class="details">
                    <h4>SuperMayan</h4><BR>
                    <p>Eat Alley Cafe<br>
                        Rs:399 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=1000%>"> <img src="images/images/pradeep.jpg"></a>
                    <h5 class="time">Sat,24 jun</h5>
                </div>
                <div class="details">
                    <h4>Paradeep Kumar</h4><BR>
                    <p>Sports Village<br>
                        Rs:1000 Onwards</p>
                </div>
            </div>
            <div class="profile">
                <div class="silde-img">
                    <a href="Booking.html?Amount=<%=3750%>"><img src="images/images/sunburn.jpg"></a>
                    <h5 class="time">Thu,28 Dec</h5>
                </div>
                <div class="details">
                    <h4>Sunburn Goa 2023</h4><BR>
                    <p>venue to be announce<br>
                        Rs:3750 Onwards</p>
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
</html>
