>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style3.css">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <title>Log-In</title>
        <link rel="stylesheet" href="Css/login.css">
    </head>
    <body>
        <div class="container">
            <div class="main-box">
                <h1> Log-In</h1>
                <form  name="login_form"  method="post" action="home.html">
                    <div class="input-box">
                        <input type="text" name="txtuser" required>
                        <label>User Name</label>
                    </div>
                    <div class="input-box">
                        <input type="password" name="txtpass" required>
                        <label>Password</label>
                    </div>
                    <div class="check">
                        <label><input type="checkbox" >Remember Me</label>
                        <a href="#">Forget Password</a>
                    </div>
                    <button type="submit" name="btnsubmit" class="btn">Log-In</button>
                    <div class="register">
                        <p>Don't Have an a Account? <a href="Registertion form.html"  class="register-link">Register Here</a></p>
                    </div>
                </form>
            </div>


        </div>
    </body>
</html>
