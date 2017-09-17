/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import com.login.dao.LoginDao;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username=request.getParameter("username");
        String  pass=request.getParameter("pass");
        LoginDao dao=new LoginDao();
        Boolean b=dao.check(username,pass);
        System.out.println("shdfkhksjd"+b+username);
        if(b)
        {   System.out.println("gggg");
            HttpSession session=request.getSession();
            session.setAttribute("username",username);
            response.sendRedirect("Home.jsp");
            
        }
        else
        {
            response.sendRedirect("Login.jsp");
            
        }
    }

    

   
     

}
