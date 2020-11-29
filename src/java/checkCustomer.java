/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author deep
 */
public class checkCustomer extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String acc_no = request.getParameter("acc_no");
        String cus_first_name = request.getParameter("cus_first_name");
        String cus_last_name = request.getParameter("cus_last_name");
        String jspname = request.getParameter("jspname");
        String userinfo = request.getParameter("userinfo");
        System.out.println(jspname);
        
        acc_no = acc_no.trim();
          System.out.println(acc_no + "  "+cus_last_name);
        
        Dbconn dbconn = new Dbconn();
        try {
            Connection conn = dbconn.dbconn();
            PreparedStatement stmt = conn.prepareStatement("select * from customer where acc_no=?");
//            stmt.setString(1,cus_first_name);
//            stmt.setString(2, cus_last_name);
            stmt.setString(1, acc_no);
         ResultSet rs = stmt.executeQuery();
           
         if(rs.next()){
      
             
             
         
             
             request.getSession().setAttribute("hasaccount","found");
              request.getSession().setAttribute("cus_acc_no",acc_no);
         if( "withdraw".equals(jspname)){
             response.sendRedirect("admin/withdrawBal.jsp");
         }else if("deposit".equals(jspname)){
             response.sendRedirect("admin/depositeBal.jsp");
         }else if("userinfo".equals(userinfo)){
             RequestDispatcher rd = request.getRequestDispatcher("userInfo");
             request.setAttribute("acc_no",acc_no);
             rd.forward(request, response);
         }else if( "delete".equals(jspname)){
             response.sendRedirect("admin/deleteAcc.jsp");
         }
              
          
             
         }else{
             System.out.println("hiii bahar");
             request.getSession().setAttribute("hasaccount","not found");
             
              if("withdraw".equals(jspname)){
                  System.out.println();
             response.sendRedirect("admin/withdrawBal.jsp");
         }else if("deposit".equals(jspname)){
             response.sendRedirect("admin/depositeBal.jsp");
         }else if("userinfo".equals(userinfo)){
              response.sendRedirect("admin/userInfo.jsp");
         }else if( "delete".equals(jspname)){
             response.sendRedirect("admin/deleteAcc.jsp");
         }
         }
            
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }

   
}
