//Ken Aguilar
//2CSC
//MP3

package controllers;
import javax.servlet.*;
import java.util.Date;

public class DateContextListener implements ServletContextListener {
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        context.setAttribute("currentDate", new Date());
    }
}
