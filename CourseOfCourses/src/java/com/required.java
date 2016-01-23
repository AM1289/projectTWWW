/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DP
 */
public class required {
    private static final String USERNAME="root";
    private static final String PASSWORD="2651073620";
    private static final String CONN_STRING="jdbc:mysql://localhost:3306/coc";
    List<String> requiredlist = new ArrayList<String>();
    Connection conn=null;
    String name;
    int semester;
    public required(int s) {
        semester=s;
    }
    
    public List<String> result() throws SQLException{
        
    try {
        DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
        conn= (Connection) DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
        PreparedStatement statement3 = (PreparedStatement)conn.prepareStatement("SELECT DISTINCT name FROM courses WHERE required= ? AND semester= ?");
        ResultSet rs=null;  
        //insert into lists the required courses
        statement3.setInt(1,1);
        statement3.setInt(2,semester);
        ResultSet rs1 = statement3.executeQuery();
        requiredlist.clear();
        while (rs1.next()) {
            name = rs1 .getString("name");
            requiredlist.add(name);
        }            
        conn.close();
        return(requiredlist);
        }catch(SQLException e) {
            System.err.println(e);
        }
        return(requiredlist);
        }
}
         
