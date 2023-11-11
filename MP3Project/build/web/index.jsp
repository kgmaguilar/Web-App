<%-- 
    Document   : index
    Created on : Oct 3, 2023, 11:11:01 PM
    Author     : Ken Aguilar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                min-height: 100vh;                                    
            }
            header {
                background-color: #333;
                color: #fff;
                text-align: center;
                padding: 10px;
            }
            main {
                flex-grow: 1;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                text-align: center;             
            }
            footer {
                background-color: #333;
                color: #fff;
                text-align: center;
                padding: 10px;
            }
            form {
                border: 5px solid #333;
                padding: 10px;
                background-color: #333;
                color: #fff;
            }         
        </style>
    </head>
    <body>
        <header>
            <h3>Name: <% out.print(getServletContext().getInitParameter("myLastName")); %>, <% out.print(getServletContext().getInitParameter("myFirstName")); %></h3>
            <h3>Section: <% out.print(getServletContext().getInitParameter("mySection")); %></h3>
            <h3>Subject: <% out.print(getServletContext().getInitParameter("mySubject")); %></h3>                      
        </header>
        
        <main>
            <form action="LoginServlet" method="post">
                <label for="login-page">Login Page</label><br><br>
              
                <label for="username">Username:</label>
                <input type="text" id="l1" name="l1" required><br><br>

                <label for="password">Password:</label>
                <input type="password" id="l2" name="l2" required><br><br>

                <input type="submit" value="Login">
            </form>
        </main>
        
        <footer>
            <h3>Current Date and Time: <fmt:formatDate value="${currentDate}" pattern="MMM-dd-yyyy / HH:mm:ss" /></h3>
            <h3>MP Number: <% out.print(getServletContext().getInitParameter("myMpNumber")); %></h3>
        </footer>
    </body>
</html>

