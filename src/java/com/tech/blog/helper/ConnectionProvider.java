/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.helper;

/**
 *
 * @author Hp
 * 
 */
import java.sql.*;

public class ConnectionProvider {
    
    private static Connection con;
    
    public static Connection getConnection(){
        try{
           
                //driver class load
                Class.forName("oracle.jdbc.OracleDriver");
                
                //create a connection..
                con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","Deepika","1234");
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
