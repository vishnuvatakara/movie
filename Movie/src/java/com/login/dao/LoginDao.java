
package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDao {
     
    public Boolean check(String username,String pass)
    {
        try{
            System.out.println(pass);
        Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3307/contact","root","password");
        PreparedStatement ps=co.prepareStatement("select * from table1 where name=? and pass=?");
        ps.setString(1,username);
        ps.setString(2,pass);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            return true;
                  
        }
      
        }
        catch(SQLException e)
        {
        }
        
        return false;
           
    
    }}
    

