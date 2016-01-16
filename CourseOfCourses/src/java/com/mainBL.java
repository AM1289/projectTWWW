/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import com.mysql.jdbc.Connection;
import com.uthldap.Uthldap;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DP
 */
public class mainBL extends HttpServlet {
    private static final String USERNAME="root";
    private static final String PASSWORD="2651073620";
    private static final String CONN_STRING="jdbc:mysql://localhost:3306/coc";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet mainBL</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet mainBL at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            int coursesmax = 45;
            String viewname;   //name of the view that will follow
            // Create arrays of selected courses 
            String[] numcourses3 = request.getParameterValues("third");
            String[] numcourses4 = request.getParameterValues("fourth");
            String[] numcourses5 = request.getParameterValues("fifth");
            
            // Check if selected courses are legal
            transaction trans = new transaction(numcourses3,numcourses4,numcourses5);
            if (!trans.isLegal() ) {
                viewname="error";
            }
            else {
                try {
                    List<String> res = trans.result();
                    request.setAttribute("list", res);
                   
                } catch (SQLException ex) {
                    Logger.getLogger(mainBL.class.getName()).log(Level.SEVERE, null, ex);
                }
                 viewname="result";
            }
            Connection conn=null;
   
            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
                conn= (Connection) DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
                System.out.println("Connected!!");


                conn.close();
            }catch(SQLException e) {
                System.err.println(e);
            }
        
        RequestDispatcher view = request.getRequestDispatcher(viewname+".jsp");
        view.forward(request, response); 
        processRequest(request, response);
     }
    }
 
