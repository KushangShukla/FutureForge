<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="Register.css">
</head>

<body>
    <div class="formArea">
        <p>Already have an account? <a href="Login.jsp">Login here</a></p>
        <hr>
        <h1>Register</h1>
        <form action="RegisterSubmit.jsp" method="post">


            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email" required>

            <label for="phonenumber">Phone Number:</label><br>
            <input type="number" id="phonenumber" name="phonenumber" required>


            <label for="age">Age:</label><br>
            <input type="number" id="age" name="age" required>

            <label for="gender">Gender:</label><br>
            <input type="text" name="gender" id="gender" required>
            
            <label for="city">City :</label><br>
            <input type="text" id="city" name="city" required>

            <label for="country">Country:</label><br>
            <input type="text" id="country" name="country" required>



            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password" required>

            <label for="confirmpassword">Confirm Password:</label><br>
            <input type="password" id="confirmpassword" name="confirmpassword" required>

            <input class="RegisterButton" type="submit" value="Register">

        </form>
    </div>
</body>

</html>