<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="ForgotPassword.css">
</head>

<body>
    <div class="container">
        <form class="ForgotPasswordForm">
            <h1>Forgot Password</h1>
            <div class="form">
                <label for="email">Email</label>
                <br>
                <input type="email" id="email" name="email" required>
                <br>
                <label for="newpassword">New Password</label>
                <br>
                <input type="password" id="newpassword" name="newpassword" required>
                <br>
                <label for="confirmpassword">Confirm Password</label>
                <br>
                <input type="password" id="confirmpassword" name="confirmpassword" required>
                <br>
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>

</html>