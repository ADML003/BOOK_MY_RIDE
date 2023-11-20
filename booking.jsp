<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="refresh" content="60">
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

    <form action="/EWA_PROJECT/BookServlet" method="post">
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required>

        <label for="age">Age:</label>
        <input type="text" id="age" name="age" required>

        <label for="startPlace">From:</label>
        <select id="startPlace" name="startPlace" required>
            <option value="NCU">Northcap University</option>
            <option value="SEC23">Sector-23</option>
            <option value="SEC7">Sector-7</option>
            <!-- Add more options as needed -->
        </select>

        <label for="destination">To:</label>
        <select id="destination" name="destination" required>
            <option value="SEC4">Sector-4</option>
            <option value="NEWCOLONY">New Colony</option>
            <option value="HUDA">HUDA City Metro Station</option>
            <!-- Add more options as needed -->
        </select>

        <label for="Class">Class:</label>
        <select id="Class" name="Class" required>
            <option value="economy">Normal</option>
            <option value="business">Luxury sedan</option>
            <option value="firstClass">MPV</option>
            <!-- Add more options as needed -->
        </select>

        <label for="passengerCount">Passenger Count:</label>
        <input type="number" id="passengerCount" name="passengerCount" required>
       
    </form>
     <form action="/EWA_PROJECT/BookServlet" method="post">
    <!-- Existing form fields -->

    <input type="submit" value="Book Now">
</form>
 
</body>

</html>

  