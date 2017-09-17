/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vishnu
 */
@WebServlet(name = "Payment", urlPatterns = {"/Payment"})
public class Payment extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String process=request.getParameter("process");
        String username=request.getParameter("username");
        System.out.println("mmmm");
        System.out.println(username);
        System.out.println(process);
        if(process.equals("ok"))
        {   
            HttpSession session=request.getSession();
            session.setAttribute(username,"username");
            response.sendRedirect("Payment1.jsp");
            
        }
        
      
    }

   
}
