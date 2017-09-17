/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static org.apache.tomcat.jni.User.username;



@WebServlet(name = "Home", urlPatterns = {"/Home"})
public class Home extends HttpServlet {

    

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pay=request.getParameter("pay");
        //System.out.println(pay);
        String username=request.getParameter("username");
         //System.out.println(username);
        if(pay.equals("paymoney"))
        {
            
        HttpSession session=request.getSession();
        session.setAttribute("username",username);
        response.sendRedirect("Payment.jsp");
        
           }

    }
}
