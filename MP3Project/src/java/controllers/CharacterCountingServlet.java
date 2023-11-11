//Ken Aguilar
//2CSC
//MP3

package controllers;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CharacterCountingServlet extends HttpServlet {
    private String digits;
    private String vowels;
    private String consonants;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        digits = config.getInitParameter("digits");
        vowels = config.getInitParameter("vowels");
        consonants = config.getInitParameter("consonants");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String inputString = request.getParameter("inputString");
        
        int stringLength = inputString.length();
        int digitCount = 0;
        int vowelCount = 0;
        int consonantCount = 0;
        int symbolCount = 0;

        for (char c : inputString.toCharArray()) {
            if (digits.indexOf(c) != -1) {
                digitCount++;
            } else if (vowels.indexOf(c) != -1) {
                vowelCount++;
            } else if (consonants.indexOf(c) != -1) {
                consonantCount++;
            } else if (c != ' '){
                symbolCount++;
            }
        }

        String output = "String: " + inputString + "\n" +
                "String Length: " + stringLength + "\n" +
                "Digits: " + digitCount + "\n" +
                "Vowels: " + vowelCount + "\n" +
                "Consonants: " + consonantCount + "\n" +
                "Symbols: " + symbolCount + "\n";
        
        request.setAttribute("characterCountingOutput", output);
        RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
        dispatcher.forward(request, response);
        response.sendRedirect("success.jsp");
    }   
}
