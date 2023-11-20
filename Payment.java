package BookMyRide;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Payment
 */
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String startPlace = request.getParameter("startPlace");
		String destination = request.getParameter("destination");
		String departureDate = request.getParameter("destination");
		String flightClass = request.getParameter("flightClass");
		String passengerCount = request.getParameter("passengerCount");
		
		if(fullName.isEmpty()||email.isEmpty()||startPlace.isEmpty()||destination.isEmpty()||destination.isEmpty()||flightClass.isEmpty()||passengerCount.isEmpty()) {
			RequestDispatcher req= request.getRequestDispatcher("Book.jsp");
			req.include(request, response);
		}
		else {
			RequestDispatcher req= request.getRequestDispatcher("Payment.jsp");
			req.forward(request, response);
		}
	}

}
