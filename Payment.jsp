<!-- payment.html -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
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
        input[type="number"],
        input[type="date"] {
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
    <h1>Payment</h1>

    <form action="/BookMyRide/PaymentConfirm" method="post">
        <label for="cardNumber">Card Number:</label>
        <input type="text" id="cardNumber" name="cardNumber" required>

        <label for="expiryDate">Expiry Date:</label>
        <input type="date" id="expiryDate" name="expiryDate" required>

        <label for="cvv">CVV:</label>
        <input type="number" id="cvv" name="cvv" required>

        <input type="hidden" name="fullName" value="<%= request.getParameter("fullName") %>">
        <input type="hidden" name="email" value="<%= request.getParameter("email") %>">
        <input type="hidden" name="startPlace" value="<%= request.getParameter("startPlace") %>">
        <input type="hidden" name="destination" value="<%= request.getParameter("destination") %>">
        <input type="hidden" name="departureDate" value="<%= request.getParameter("departureDate") %>">
        <input type="hidden" name="flightClass" value="<%= request.getParameter("flightClass") %>">
        <input type="hidden" name="passengerCount" value="<%= request.getParameter("passengerCount") %>">

        <input type="submit" value="Pay Now">
    </form>
</body>

</html>
