//Ken Aguilar
//2CSC
//MP3

package controllers;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
    
    String validUsername;
    String validPassword;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        validUsername = config.getInitParameter("username");
        validPassword = config.getInitParameter("password");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String inputUsername = request.getParameter("l1");
        String inputPassword = request.getParameter("l2");

        if (validUsername.equals(inputUsername) && validPassword.equals(inputPassword)) {
            response.sendRedirect("success.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
