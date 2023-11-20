package Airline;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class PaymentConfirm
 */
public class PaymentConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentConfirm() {
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
		String cardNumber = request.getParameter("cardNumber");
		String expiryDate = request.getParameter("expiryDate");
		String cvv = request.getParameter("cvv");
		
		if(cardNumber.isEmpty()||expiryDate.isEmpty()||cvv.isEmpty()) {
			RequestDispatcher req= request.getRequestDispatcher("Payment.jsp");
			req.include(request, response);
		}
		else {
			RequestDispatcher req= request.getRequestDispatcher("PaymentConfirm.jsp");
			req.forward(request, response);
		}
	}

}
