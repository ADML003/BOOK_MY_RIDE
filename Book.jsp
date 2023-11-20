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

        form {
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <h1>Book Your Ride</h1>

    <form action="/BookMyRide/Payment" method="post">
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required>

        <label for="age">Age:</label>
        <input type="text" id="age" name="email" required>

        <label for="startPlace">From:</label>
        <input type="text" id="startPlace" name="startPlace" required>

        <label for="destination">To:</label>
        <input type="text" id="destination" name="destination" required>

        <label for="Class">Class:</label>
        <select id="Class" name="Class">
            <option value="economy">Normal</option>
            <option value="business">Luxury sedan</option>
            <option value="firstClass">MPV</option>
        </select>

        <label for="passengerCount">Number of Passengers:</label>
        <input type="number" id="passengerCount" name="passengerCount" min="1" required>

        <input type="submit" value="Book Now">
    </form>
</body>

</html>