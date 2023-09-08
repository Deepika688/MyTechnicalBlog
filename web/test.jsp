<%-- 
    Document   : test
    Created on : 17-Mar-2023, 3:13:51 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%
    
    Connection conn=ConnectionProvider.getConnection();
   Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery("select * from users");
    while(rs.next()){
      out.println(rs.getString(1));
    }
%>
