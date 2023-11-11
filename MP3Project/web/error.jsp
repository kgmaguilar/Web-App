<%-- 
    Document   : error
    Created on : Oct 3, 2023, 10:08:33 PM
    Author     : Ken Aguilar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
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
            h1 {
                border: 5px solid #333;
                padding: 10px;
                background-color: #333;
                color: #fff;
            }
            form {
                display: flex;
                margin-top: 10px;   
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
            <h1>Incorrect username and/or incorrect password.</h1> 
            <form action="index.jsp">
                <input type="submit" value="Go Back">
            </form>
        </main>
        
        <footer>
            <h3>Current Date and Time: <fmt:formatDate value="${currentDate}" pattern="MMM-dd-yyyy / HH:mm:ss" /></h3>
            <h3>MP Number: <% out.print(getServletContext().getInitParameter("myMpNumber")); %></h3>
        </footer>
    </body>
</html>
