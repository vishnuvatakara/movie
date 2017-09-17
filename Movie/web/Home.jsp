<%-- 
    Document   : Home
    Created on : Aug 29, 2017, 3:23:59 PM
    Author     : vishnu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body bgcolor="#00ffbf">
        <%
            if(session.getAttribute("username")==null){
                response.sendRedirect("Login.jsp");
            }
            %>
        <center>
        <h1>Book Ticket For Movies..........</h1> ${username}
        </center>
    <form action="Home" method="get">
        <h1>pick up your movie from list</h1>
        <input type="radio" name="movie" value="film1" checked="checked">filim1<br>
        <input type="radio" name="movie" value="filim2">filim2<br>
        <input type="radio" name="movie" value="filim3">filim3<br>
        <input type="radio" name="movie" value="filim4">filim4<br>
        <input type="radio" name="movie" value="filim5">filim5<br>
        enter the valid username<input type="text" name="username"><br>
        <h1>click to proceed for payment</h1>
        <br>
        <input type="submit" name="pay" value="paymoney">
           
    </form>
      
        <form action="Logout" method="get">
            <input type="submit" value="logout" style="float: right;">
        </form>
            
    </body>
</html>
