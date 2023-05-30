import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Controller extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    User user = new User(username, password);
    LoginDAO loginDao = new LoginDAO();
    boolean isValidUser = loginDao.validate(user);
    
    if (isValidUser) {
      RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
      dispatcher.forward(request, response);
    } else {
      RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
      dispatcher.forward(request, response);
    }
  }
}
