<%-- 
    Document   : Login
    Created on : Aug 29, 2017, 1:06:07 PM
    Author     : vishnu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
    </head>
    <body bgcolor="#ff99ff">
        <h1><center>LOGIN</center></h1>
        <form action="Login" method="get"><center>
            Enter user name :<input type="text" name="username"><br>
            <br>
            Enter pass word :<input type="password" name="pass"><br><br>
            <input type="submit" value="login">
             </center>
            <center>
            <br>
            <h1>REGISTER HERE</h1>
            <table border='0' width='280px' cellpadding='0' cellspacing='0' >
                <tr>
                    <td>
                        NAME
                    </td>
                    <td>
                        <input type="text" name="names">
                    </td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td>
                        PASSWORD
                    </td>
                    <td>
                        <input type="password" name="rpass">
                    </td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td>
                        EMAIL ID
                    </td>
                    <td>
                        <input type="text" name="mail">
                    </td>
                </tr>
                <tr> <td>&nbsp;</td> </tr>
                <tr>
                    <td>
                        <input type="submit" value="register"
                    </td>
                </tr>
            </table>
             </center>
        </form>
        
        
        
        
    </body>
</html>
