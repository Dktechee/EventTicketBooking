<%@page import="Model.RegisterData"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Database.DAO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="Css/registeration.css">
    </head>
    <body>
        <%
            String user = request.getParameter("user");

        %>
        <div class="container">
            <h1 class="form-title">Update Here </h1>
            <form name="register" method="post" action="Updatedata.html">
                <div class="main-user-info">
                    <div class="user-input-box">
                        <label for="Fullname">Full Name</label>
                        <input type="text" name="Fullname" required id="fullname" 

                               placeholder="Enter Your Fullname">

                    </div>
                    <div class="user-input-box">
                        <label for="User Name">User Name</label>
                        <input type="text" name="Username" required id="User Name" 

                               value="<%= user%>" readonly="readonly" placeholder="Enter Your User Name">

                    </div>
                    <div class="user-input-box">
                        <label for="Email">Email</label>
                        <input type="Email"  name="Email" required id="Email" 

                               placeholder="Enter Your Email">

                    </div>
                    <div class="user-input-box">
                        <label for="Phone number">Phone number</label>
                        <input type="Text"  name="phonenumber" required id="Phone number" 

                               placeholder="Enter Your Phone number">

                    </div>
                    <div class="user-input-box">
                        <label for="Password">Password</label>
                        <input type="password" name="Password" id="required" 

                               placeholder="Enter Password">

                    </div>
                    <div class="user-input-box">
                        <label for="Confirm Password"> Confirm Password</label>
                        <input type="text"  name="confirmpassword" required id="Confirm Password" 

                               placeholder=" Confirm Password">

                    </div>
                </div>
                <div class="gender-details-box">
                    <span class="gender-title">Gender</span>
                    <div class="gender-category">
                        <input type="radio" value="male" name="gender1" id="male">
                        <label for="male">Male</label>
                        <input type="radio"   value="female" name="gender1" id="female">
                        <label for="male">Female</label>
                    </div>
                </div>
                <div class="form-submit-btn">
                    <input type="submit" name="btn" value="Update Here">
                </div>
            </form>

    </body>
</html>