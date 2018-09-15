<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates,
		Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />
    <!-- /meta tags -->
    <!-- custom style sheet -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->
    <!-- fontawesome css -->
    <link href="css/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <!-- /google fonts-->


    <style>
        body {
            margin: 0;
            padding: 0;
            background: url("https://blog.hdwallsource.com/wp-content/uploads/2015/05/toy-car-39191-40094-hd-wallpapers.jpg") no-repeat 0px 0px;
            min-height: 100vh;
            background-size: cover;
            font-family: 'Raleway', sans-serif;
        }





    h1 {
        margin: 0;
        color: #ffffff;
        text-align: center;
        font-size: 50px;
        font-weight: 500;
        letter-spacing: 2px;
        padding: 50px 0;
    }

    h2 {
        margin: 0;
        color: #fc3955;
        font-size: 25px;
        font-weight: 400;
        text-align: center;
        letter-spacing: 1px;
        padding-bottom: 30px;
    }

    p.w3l-register-p {
        color: #eee;
        font-size: 13px;
        text-align: center;
        margin-top: 2em;
    }

    .w3l-login-form {
        background: rgba(0, 0, 0, 0.4117647058823529);
        max-width: 500px;
        margin: 0 auto;
        padding: 3em;
        border-radius: 10px;
        box-sizing: border-box;
    }

    .group {
        display: flex;
        padding: 15px 5px;
        background-color: #ffffff;
    }

    .group i {
        color: #fc3955;
        font-size: 20px;
        padding: 0 10px;
    }

    .w3l-form-group {
        margin: 20px 0;
    }

    .w3l-form-group label {
        display: block;
        text-transform: uppercase;
        font-size: 13px;
        color: #d2d2d2;
        letter-spacing: 2px;
        margin-bottom: 10px;
        font-style: italic;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        border: none;
        box-sizing: border-box;
        background: transparent;
        color: #000;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        outline: none;
    }

    button {
        background: #fc3955;
        color: #ffffff;
        font-size: 13px;
        text-transform: uppercase;
        letter-spacing: 1px;
        border: none;
        padding: 12px 60px;
        cursor: pointer;
        width: 100%;
        border-radius: 6px;
    }

    button:hover {
        background-color: #00BCD4;
        transition-duration: 5s;
    }

    .forgot {
        display: flex;
        justify-content: space-between;
        margin: 20px 0;
    }

    a {
        color: #eee;
        font-size: 14px;
        text-decoration: none;
    }

    .forgot p {
        color: #ffffff;
        text-align: center;
        margin: 0px;
        font-size: 13px;
    }

    .register {
        color: #00BCD4;
        text-decoration: none;
    }

    /*--footer--*/

    p.copyright-agileinfo {
        font-size: 15px;
        letter-spacing: 2px;
        color: #fff;
        font-weight: 300;
    }

    footer p a {
        display: inline-block;
        color: #fff;
        text-decoration: underline;
    }

    footer p a:hover {
        color: #fff;
        text-decoration: none;
        -webkit-transition: 0.5s all;
        -o-transition: 0.5s all;
        -moz-transition: 0.5s all;
        -ms-transition: 0.5s all;
        transition: 0.5s all;
    }

    footer {
        padding: 4em 0;
        text-align: center;
    }
    /*--//footer--*/

    /*-- /responsive design --*/

    @media(max-width:768px) {
        h1 {
            font-size: 47px;
        }
    }

    @media(max-width:667px) {
        h1 {
            font-size: 45px;
        }
    }

    @media(max-width:640px) {
        p.copyright-agileinfo {
            letter-spacing: 1px;
        }
        h1 {
            font-size: 43px;
        }
    }

    @media(max-width:568px) {
        h1 {
            font-size: 40px;
        }
        p.copyright-agileinfo {
            font-size: 14px;
        }
    }

    @media(max-width:480px) {
        .w3l-login-form {
            margin: 0 3vw;
        }
        h1 {
            font-size: 38px;
        }
        p.copyright-agileinfo {
            line-height: 1.8em;
        }
    }

    @media(max-width:414px) {
        h1 {
            font-size: 34px;
        }
    }

    @media(max-width:384px) {
        h1 {
            font-size: 30px;
        }
    }

    @media(max-width:320px) {
        h1 {
            font-size: 25px;
        }
        .forgot p {
            text-align: left;
        }
        .forgot {
            display: block;
        }
    }
</style>
</head>
/*-- /responsive design --*/
<body>
<h1>Car Rental Login Form</h1>
<div class=" w3l-login-form">
    <h2>Login Here</h2>
    <form action="/validatelogin" method="POST">

        <div class=" w3l-form-group">
            <label>Username:</label>
            <div class="group">
                <i class="fas fa-user"></i>
                <input type="text"  name="userName" class="form-control" placeholder="Username" required="required" />
            </div>
        </div>
        <div class=" w3l-form-group">
            <label>Password:</label>
            <div class="group">
                <i class="fas fa-unlock"></i>
                <input type="password" name="password" class="form-control" placeholder="Password" required="required" />
            </div>
        </div>
        <div class="forgot">
            <a href="#">Forgot Password?</a>
            <p><input type="checkbox">Remember Me</p>
        </div>
        <button type="submit">Login</button>
    </form>
    <p class=" w3l-register-p">Don't have an account?<a href="/Registration" class="register"> Register</a></p>
</div>
<footer>
    <p class="copyright-agileinfo"> &copy; 2018 All Rights Reserved | Design by <a href="#">Nikhil</a></p>
</footer>

</body>

</html>