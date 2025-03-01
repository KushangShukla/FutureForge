<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title> 
    <link rel="stylesheet" href="login.css">
</head>

<body>
    <div class="loginForm">
        <h1>Login</h1>
        <form class="form" action="LogInSubmit.jsp" method="post">
            <label for="email">Email</label>
            <input type="email" name="email" placeholder="Enter your email address" />
            <label for="password">password</label>
            <input type="password" name="password" placeholder="Enter A Password" />
            <div class="forPasswordReset">
                <a href="ChangePassword.jsp">Change Password?</a>
            </div>
            <button class="LoginButton" type="submit">Login</button>
            <div class="or">
                <div class="hr1">
                    <hr>
                </div>
                <div class="orText">
                    or
                </div>
                <div class="hr2">
                    <hr>
                </div>
            </div>
            <div class="mobile">
                <a href="LoginMobileNumber">
                    Mobile Number
                </a>
            </div>
            <div class="signUp">
                <div class="signupQ">Don't have an account ?</div>
                <a href="Register.html">Sign Up</a>
            </div>

        </form>


    </div>
</body>

</html>