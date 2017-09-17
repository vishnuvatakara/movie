<%-- 
    Document   : Payment
    Created on : Aug 29, 2017, 5:58:41 PM
    Author     : vishnu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
    </head>
    <body bgcolor="#66ff66">
        <%
            if(session.getAttribute("username")==null){
                response.sendRedirect("Login.jsp");
            }
            %>
            <h1><center>Process The Payment</center></h1><br><br><br>
    <center><h1>Select the payment mode</h1>
        <form action="Payment" method="get">
            <select>
                <option value="NETBANKING">NETBANKING</option>
                <option value="DEBITCARD">VISA DEBITCARDS</option>
            </select>
            <br><br><h1>confirm username</h1>
            <input type="test" name="username"><br><br>
            <input type="submit" name="process" value="ok">
        </form>
    </center>
    <form action="Logout" method="get">
        <input type="submit" value="logout" style="float: right";>
    </form>
            
    </body>
</html>
