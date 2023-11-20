<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Payment Confirmation</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4efef;
            text-align: center;
            margin: 0;
            padding: 0;
            color: #555;
        }

        .confirmation {
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #4caf50;
        }
    </style>
</head>
<body>
    <div class="confirmation">
        <h2>Payment Successful!</h2>
        <p>Your ticket has been booked with the following details:</p>
        <p><strong>Ticket Number:</strong> <%= request.getParameter("ticketNumber") %></p>
        <p><strong>Full Name:</strong> <%= request.getParameter("fullName") %></p>
        <p><strong>Email:</strong> <%= request.getParameter("age") %></p>
        <p><strong>From:</strong> <%= request.getParameter("from") %></p>
        <p><strong>To:</strong> <%= request.getParameter("to") %></p>
        <p><strong>Flight Class:</strong> <%= request.getParameter("Class") %></p>
        <p><strong>Number of Passengers:</strong> <%= request.getParameter("passengerCount") %></p>
    </div>
</body>
</html>
s