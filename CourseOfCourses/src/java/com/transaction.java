/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;
import com.error;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DP
 */
public class transaction {
    error errcode = new error();
    int maxcourses =45;
    String[] c3,c4,c5;
    private static final String USERNAME="admin";
    private static final String PASSWORD="admin";
    private static final String CONN_STRING="jdbc:mysql://localhost:3306/coc";
    
    public transaction(String[] courses3, String[] courses4, String[] courses5) {
        c3=courses3;
        c4=courses4;
        c5=courses5;
    }
    
    public boolean isLegal(){
      // Check if all selected lessons are valid
      //mporoun na epilegoun mexri 5 mathimata 5ou etous
      if (c5!=null) {
        if (c5.length>5 ) {
          errcode.setErrCode(5);
          return(false);
        }  
      }
      
      // mporoun na epilegoun mexri 14 mathimata 4ou etous
      if (c4!=null) {
        if (c4.length>14) {
          errcode.setErrCode(4);
          return(false);
        }
      }
      //mporoun na epilegoun mexri 18 mathimata 3ou etous kai synolika
      if (c3!=null) {    
        if (c3.length>18) {
            errcode.setErrCode(3);
            return(false);
        }
      }
      if (c3!=null && c4!=null && c5!=null){
           if (c3.length+c4.length+c5.length>18) {
               errcode.setErrCode(2);
               return(false);
           }
      }
      return(true);
    }
    public List<String> result() throws SQLException{
        int i;
        int curr=0;
        List<Integer> rslist = new ArrayList<Integer>();
        Connection conn=null;
        String name;
        int code=0;
        ResultSet rs=null,rs2=null;
        List<String> rsfin = new ArrayList<String>();        
        if (c3!=null) {
            
            for(i=0;i<c3.length;i++) {
                rslist.add(curr,Integer.parseInt(c3[i]));
                curr++;
            }
        }
        
        if (c4!=null) {
            for(i=0;i<c4.length;i++) {
                rslist.add(Integer.parseInt(c4[i]));
                curr++;
            }
        }
        if (c5!=null) {
            for(i=0;i<c5.length;i++) {
                rslist.add(Integer.parseInt(c5[i]));
                curr++;
            }
        }
        for( i=0;i<rslist.size();i++){
            System.out.println(rslist.get(i));
        } 
         try {
                
                    DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
                    conn= (Connection) DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
                    System.out.println("Connected again!!");
                    PreparedStatement statement = (PreparedStatement)conn.prepareStatement("SELECT DISTINCT name FROM courses WHERE code = ?");
                    PreparedStatement statement2 =(PreparedStatement)conn.prepareStatement("SELECT prerequisites FROM courses WHERE name= ?");
                    for (i=0;i<rslist.size();i++) {
                        statement.setInt(1,rslist.get(i));
                        rs = statement.executeQuery();
                        
                        while (rs.next()) {
                            name = rs.getString("name");
                            statement2.setString(1,name);
                            rs2 = statement2.executeQuery();                            
                            while (rs2.next()) {
                                code = rs2.getInt("prerequisites");
                                rslist.add(curr,code);
                                curr++;
                            }
                        }
                        
                    }
                    curr=0;
                    for (i=0;i<rslist.size();i++) {
                        statement.setInt(1, rslist.get(i));
                        rs=statement.executeQuery();
                        while (rs.next()) {
                            name = rs.getString("name");
                            rsfin.add(curr,name);
                            curr++;
                        }
                    }
                    conn.close();
               
                    }catch(SQLException e) {
                        System.err.println(e);
                    }
        for( i=0;i<rsfin.size();i++){
            System.out.println(rsfin.get(i));
        } 
        return(rsfin);
        
    }
}
