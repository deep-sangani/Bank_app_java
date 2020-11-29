/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author deep
 */
public class deleteAccount extends HttpServlet {

   
    
 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Dbconn dbconn = new Dbconn();
        
        try {
             String acc_no = (String)request.getSession().getAttribute("cus_acc_no");
             Connection conn = dbconn.dbconn();
             PreparedStatement stmt = conn.prepareStatement("delete from customer where acc_no =?");
             stmt.setString(1, acc_no);
           int i  = stmt.executeUpdate();
           
           
           if(i>0){
          
           request.getSession().setAttribute("model","Account Deleted successfully");
              
           response.sendRedirect("admin/deleteAcc.jsp");
           
           }
        } catch (Exception e) {
            System.out.println(e);
        }
        
    }

   

}
