<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book My Ride</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4efef;
            text-align: center;
            margin: 0;
            padding: 0;
            color: #555;
        }

        h1 {
            font-size: 36px;
            margin-top: 30px;
            color: #333;
        }

        h2 {
            font-size: 24px;
            color: #555;
            margin-bottom: 20px;
        }

        .feature-links {
            margin-top: 30px;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }

        .feature-link {
            text-decoration: none;
            color: #333;
            background-color: #fff;
            padding: 20px;
            margin: 10px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease-in-out;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .feature-link:hover {
            transform: scale(1.1);
        }

        img {
            margin-bottom: 10px;
        }
    </style>
</head>

<body>
    <h2>SELECT THE OPTION BELOW</h2>

    <div class="feature-links">
        <a href="Book.jsp" class="feature-link">
            <img src="abc.jpg" alt="" width="140">
            <br>Book a Ride
        </a>
        <a href="#" class="feature-link">
            <img src="111.jpeg" alt="" width="100">
            <br>Check Ride Status
        </a>
        <a href="AboutUs.jsp" class="feature-link">
            <img src="black-us-sign-icon-logo-isolated-white-background-black-us-sign-icon-logo-isolated-white-background-simple-172074347.webp" alt="" width="120">
            <br>About us
        </a>
    </div>
</body>

</html>
