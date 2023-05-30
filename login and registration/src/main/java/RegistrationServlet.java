import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        
        RegistrationPOJO registration = new RegistrationPOJO(fullName, username, password, email);
        RegistrationDAO registrationDao = new RegistrationDAO();

        try {
            if (registrationDao.registerUser(registration)) {
                // Registration successful, forward to confirmation page
                RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                dispatcher.forward(request, response);
            } else {
                // Registration failed, redirect back to registration page
                response.sendRedirect("registration.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle any database-related errors
            // You can redirect to an error page or display an error message
        }
    }
}
