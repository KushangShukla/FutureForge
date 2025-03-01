<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="Counselling.css" />
</head>

<body>
    <div class="main">
        <h1>Counselling</h1>
        <p class="p1">
            Our counselling services are available to all students. We offer a range
            of services to help you with any personal or academic issues you may be
            facing. Our team is here to help you with any issues you may be facing.
        </p>
        <div class="content">
            <form action="CounsellingSubmit.jsp" method="post">
                <br />
                <label for="email">Email</label>
                <input type="email" name="email" id="email" required/>
                <br />
                <label for="phonenumber">Phone Number</label>
                <input type="number" id="phonenumber" name="phonenumber" required />
                <br />
                <br />
                <label for="askyourquery">Ask your query</label>
                <input type="text" id="askyourquery" name="askyourquery" required/>
                <br />
                <textarea name="" id="" cols="30" rows="10"></textarea>
                <br />
                <button>Submit</button>
                <p class="p2">Our team will get back to you as soon as possible.</p>
            </form>
        </div>
    </div>
    <div class="footer">
        <a href="index.html">Back to Home page</a>
    </div>
</body>

</html>