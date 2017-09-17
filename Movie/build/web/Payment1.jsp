<%-- 
    Document   : Payment1
    Created on : Aug 30, 2017, 12:07:55 PM
    Author     : vishnu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            if(session.getAttribute("username")==null){
                response.sendRedirect("Login.jsp");
            }
            %>
        <h1>Transaction success print your ticket  </h1>
    </body>
</html>
