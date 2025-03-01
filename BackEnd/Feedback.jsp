<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="Feedback.css" />
</head>

<body>
    <div class="container">
        <form class="form" action="Feedback.css" method="post">
            <h1>Feedback Form</h1>
            <label for="name">Name:</label>
            <br />
            <input type="text" id="name" name="name" required />
            <br />
            <label for="email">Email:</label>
            <br />
            <input type="email" id="email" name="email" required />

            <br />
            <label for="feedback">Feedback:</label>
            <br />
            <textarea id="feedback" name="feedback" rows="4" cols="50" required></textarea>

            <br />
            <button type="submit" value="Submit">Submit</button>
        </form>
    </div>
</body>

</html>