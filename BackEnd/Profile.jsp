<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="Profile.css">
</head>

<body>
    <div class="profile-container">
        <img src="Images.jpg" alt="Profile Photo" class="profile-photo">
        <form action="ProfileSubmit.jsp" method="post">
        <div class="profile-info">
            <h1>Username</h1>
            <!-- <p>Email: user@example.com</p> -->
            <!-- <p>Phone Number: 123-456-7890</p> -->
            <!-- <p>Education: Bachelor's Degree in Computer Science</p> -->
            <!-- <p>Interests: Coding, Reading, Traveling</p> -->
<input type="text" id="skills" name="skills" placeholder="Enter your Skills here ">
             
<input type="text" id="name" name="name" placeholder="Enter your name here ">

<input type="text" id="interests" name="interests" placeholder="Interests">

<input type="text" class="goals" id="goals" name="goals" placeholder="Enter your goals">

<input type="text" class="courses_viewed" id="courses_viewed" name="courses_viewed" placeholder="courses_viewed">




            <br>
            <button type="submit">Submit</button>	
            <br>
            <a href="index.html">Back to Home page</a>
        </div>
    	</form>
    </div>
    
    
</body>

</html>



