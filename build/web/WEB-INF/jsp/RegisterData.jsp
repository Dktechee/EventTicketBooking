

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Css/reg.css">
    </head>
    <body>
        <%
            String Fullname = (String) session.getAttribute("Fullname");
            String Username = (String) session.getAttribute("Username");
            String Email = (String) session.getAttribute("Email");
            String phonenumber = (String) session.getAttribute("phonenumber");
            String Password = (String) session.getAttribute("Password");
            String gender1 = (String) session.getAttribute("gender1");


        %>
        <div class="container">
            <h1 class="form-title">User Data </h1>
            <form name="register" method="post" action="Login.html">
                <div class="main-user-info">
                    <div class="user-input-box">
                        <label for="Fullname">Full Name</label>
                        <input type="text" name="Fullname"  id="fullname" 

                               placeholder="<% out.println(Fullname);%>">
                        <div class="error"></div>

                    </div>
                    <div class="user-input-box">
                        <label for="User Name">User Name</label>
                        <input type="text" name="Username"  id="User Name" 

                               placeholder="<% out.println(Username);%>">
                        <div class="error"></div>

                    </div>
                    <div class="user-input-box">
                        <label for="Email">Email</label>
                        <input type="Email"  name="Email"  id="Email" 
                               placeholder="<% out.println(Email);%>">
                        <div class="error"></div>

                    </div>
                    <div class="user-input-box">
                        <label for="Phone number">Phone number</label>
                        <input type="Text"  name="phonenumber"  id="Phone number" 

                               placeholder="<% out.println(phonenumber);%>">
                        <div class="error"></div>

                    </div>
                    <div class="user-input-box">
                        <label for="Password">Password</label>
                        <input type="password" name="Password" id="required" 

                               placeholder="<% out.println(Password);%>">
                        <div class="error"></div>

                    </div>
                    <div class="user-input-box">
                        <label for="Confirm Password"> Gender</label>
                        <input type="text"  name="Gender" id="Confirm Password" 

                               placeholder="<% out.println(gender1);%>">
                        <div class="error"></div>

                    </div>
                </div>

                <div class="form-submit-btn">
                    <input type="submit" name="btn" value="Okay">
                </div>
            </form>
    </body>
</html>
