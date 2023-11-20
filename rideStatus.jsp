
</html>
<h2>Ride Status</h2>
<p>Status: <%= request.getAttribute("rideStatus") %></p>
<p>Estimated Time: <%= request.getAttribute("estimatedTime") %> minutes</p>

<h2>Booking Information</h2>
<!-- Display other booking information -->

<h2>Fare</h2>
<p>Fare: $<%= request.getAttribute("fare") %></p>

<form action="/EWA_PROJECT/RideStatusServlet" method="post">
    <input type="submit" value="Cancel Ride">
</form>
