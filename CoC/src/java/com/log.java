/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.uthldap.Uthldap;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author DP
 */
public class log extends HttpServlet {
    private static final String USERNAME="admin";
    private static final String PASSWORD="admin";
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
            out.println("<title>Servlet log</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet log at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String user=request.getParameter("username");
            String pass=request.getParameter("password");
            Uthldap ldap = new Uthldap(user,pass);
            PrintWriter writer = response.getWriter();
            if(ldap.auth()){
                writer.println("<html><body>Autheticated!! Your name is: " + ldap.getName()+" </body></html>");
                
            }
            else{
                writer.println("<html><body>Authetication failed</body></html>");
            }
            Connection conn=null;
            
            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
                conn= (Connection) DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
                System.out.println("Connected!!");
            }catch(SQLException e) {
                System.err.println(e);
            }
            
        processRequest(request, response);
    }

}
