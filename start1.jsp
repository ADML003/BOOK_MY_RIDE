<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
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

        .header-image {
            width: 100%;
            max-width: 800px; /* Adjusted the max-width for better responsiveness */
            margin: 20px auto;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 32px; /* Increased the font size for a more prominent header */
            margin-top: 20px;
            color: #007bff; /* Changed the color for emphasis */
        }

        strong {
            font-size: 28px; /* Increased the font size for the strong tag */
            color: #009688; /* Changed the color for emphasis */
        }

        .interactive-button {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            font-size: 18px;
            cursor: pointer;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>

<body>
    <h1>Welcome to <u>Book My Ride</u></h1>
    <img class="header-image" src="Screenshot 2023-11-20 140452.jpg" alt="Book My Ride" width="">

    <strong><h1 id="journeyText">Start Your Journey!</h1></strong>
    
    <button class="interactive-button" onclick="changeText()">Click me!</button>

    <script>
        function changeText() {
            var journeyText = document.getElementById('journeyText');
            journeyText.innerHTML = "Journey in Progress!";
        }
    </script>
</body>

</html>