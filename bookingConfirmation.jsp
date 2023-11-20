<%@ page import="java.util.Random" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.TimeZone" %>

<%
    // Sample ride status data
    String[] statuses = {"Waiting", "On the way", "Arrived"};
    String status = statuses[new Random().nextInt(statuses.length)];
    int estimatedTime = new Random().nextInt(30) + 10; // Random time between 10 to 40 minutes
    boolean isArrived = status.equals("Arrived");

    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
    sdf.setTimeZone(TimeZone.getTimeZone("UTC"));
    String arrivalTime = isArrived ? sdf.format(new Date()) : "--:--:--";
%>

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

        #rideStatus {
            margin-top: 20px;
        }

        #checkStatusButton {
            padding: 10px;
            background-color: #5bc0de;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <h1>Book Your Ride</h1>

    <!-- Booking information -->
    <h2>Booking Information</h2>
    <p>Name: <%= request.getAttribute("fullName") %></p>
    <p>Age: <%= request.getAttribute("age") %></p>
    <p>From: <%= request.getAttribute("startPlace") %></p>
    <p>To: <%= request.getAttribute("destination") %></p>
    <p>Class: <%= request.getAttribute("travelClass") %></p>
    <p>Passenger Count: <%= request.getAttribute("passengerCount") %></p>
    <p>Fare: <%= request.getAttribute("fare") %></p>

 <form action="/EWA_PROJECT/BookServlet" method="post">
    <!-- Existing form fields -->

    <input type="submit" value="Book Now">
</form>
 
</body>

</html>
