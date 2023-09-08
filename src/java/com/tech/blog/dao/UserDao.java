/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 
*/
package com.tech.blog.dao;

import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import java.sql.*;

//import oracle.sql.*;

/**
 *
 * @author Hp
 */

public class UserDao {
    
   
   private Connection conn;
   public UserDao(Connection conn){
       this.conn=conn;
   }
   
     
    //mathod to insert user to data base 
   public int getId()throws Exception{
       Statement st=ConnectionProvider.getConnection().createStatement();
       ResultSet rs=st.executeQuery("select max(id) from technicalblogtable");
       int id=101;
       if(rs.next())
           id=rs.getInt(1)+1;
       return id;
               
   }
    
    public boolean  saveUser(User user)
    {
         boolean f = false;
        try
        {
            //user --> database
            
           
            String query = "insert into technicalblogtable(name,email,password,gender, about,id) values (?,?,?,?,?,?)";
            PreparedStatement pstmt =ConnectionProvider.getConnection().prepareStatement(query);
            
            pstmt.setString(1,user.getName());
            pstmt.setString(2,user.getEmail());
            pstmt.setString(3,user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5,user.getAbout());
            pstmt.setInt(6,this.getId());
           
            
            pstmt.executeUpdate();
            f = true;
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    //get user by useremail and userpassword:
    
    public User getUserByEmailAndPassword(String email, String password){
        User user = null;
        
        try{
            String query = "select * from technicalblogtable where email =? and password=?";
           PreparedStatement pstmt = ConnectionProvider.getConnection().prepareStatement(query);
           pstmt.setString(1,email);
           pstmt.setString(2, password);
           
           ResultSet set =   pstmt.executeQuery();
           
           if(set.next()){
               user = new User();
               //data from db
               String name = set.getString("name");
               
               //set to user object;
               
               user.setName(name);
               //System.out.print(user.getName()+" jokp");
               user.setId(set.getInt("id"));
               user.setEmail(set.getString("email"));
               user.setPassword(set.getString("password"));
               user.setGender(set.getString("gender"));
               user.setAbout(set.getString("about"));
               String date=set.getDate("rdate").toString();

               user.setDateTime(date);
               user.setProfile(set.getString("profile"));
           }
           
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return user;
    }
    
    
    public boolean updateUser(User user){
        
        boolean f = false;
        try{
            
//            String query = "update user set name=?, email=?, password=?, gender=?, about=?, profile=? where id=?";
//      String query = "update user set id=?, name=?, email=?, password=?, gender=?, about=? where profile=?";
//            PreparedStatement p = conn.prepareStatement(query);
//             p.setInt(1,user.getId());
//            p.setString(2,user.getName());
//              p.setString(3,user.getEmail());
//                p.setString(4,user.getPassword());
//                  p.setString(5,user.getGender());
////                   p.setString(6,user.getDateTime());
//                    p.setString(6,user.getAbout());
//                     p.setString(7,user.getProfile());
////                      p.setInt(7,user.getId());
//                      

 String query = "update technicalblogtable set name=?, email=?, password=?, gender=?, about=?, profile=? where id=?";
//            PreparedStatement p =ConnectionProvider.getConnection().prepareStatement(query);
             PreparedStatement p = conn.prepareStatement(query);
            p.setString(1,user.getName());
            p.setString(2,user.getEmail());
            p.setString(3,user.getPassword());
            p.setString(4, user.getGender());
            p.setString(5,user.getAbout());
              p.setString(6,user.getProfile());
            p.setInt(7,user.getId());
            
            
            System.out.println(user);
                      p.executeUpdate();
                        f = true;
                      
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
}  

