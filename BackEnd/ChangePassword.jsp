<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="ChangePassword.css">
</head>

<body>
    <div class="container">
        <form class="ChangePasswordSubmit.jsp">
            <h1>Change Password</h1>
           	<form class="form" action="ChangePasswordSubmit.jsp" method="post">
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
                <button type="submit">Change Password</button>
            </div>
        </form>
    </div>
</body>

</html>