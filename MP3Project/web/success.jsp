<%-- 
    Document   : success
    Created on : Oct 3, 2023, 10:08:21 PM
    Author     : Ken Aguilar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success Page</title>
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
            .Analyzer {
                border: 5px solid #333;
                padding: 10px;
                background-color: #333;
                color: #fff;
            }       
            .logout-button {
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
            <div class="Analyzer">
                <form action="CharacterCountingServlet" method="post">
                    <label>Analyzer</label><br><br>
                    <label for="inputString">Enter a string:</label>
                    <input type="text" id="inputString" name="inputString" required><br><br>

                    <input type="submit" value="Analyze">

                    <% if (request.getAttribute("characterCountingOutput") != null) { %>
                      <p>Character Counting Output:</p>
                      <pre><%= request.getAttribute("characterCountingOutput") %></pre>
                    <% } %>                       
                </form>  
            </div>           
            <div class="logout-button">
                <form action="index.jsp">
                    <input type="submit" value="Log Out">
                </form>
            </div>
        </main>
        
        <footer>
            <h3>Current Date and Time: <fmt:formatDate value="${currentDate}" pattern="MMM-dd-yyyy / HH:mm:ss" /></h3>
            <h3>MP Number: <% out.print(getServletContext().getInitParameter("myMpNumber")); %></h3>            
        </footer>
    </body>
</html>
