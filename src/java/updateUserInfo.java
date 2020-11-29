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
public class updateUserInfo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email_add = request.getParameter("email_add");
        String street_add = request.getParameter("street_add");
        String city = request.getParameter("city");
        String pincode = request.getParameter("pincode");
        String state = request.getParameter("state");
        String account_type = request.getParameter("account_type");
        String pan_card = request.getParameter("pan_card");
        String mobile_no = request.getParameter("mobile_no");
        String aadhar_no = request.getParameter("aadhar_no");
        String acc_no = request.getParameter("acc_no");
        
        
        Dbconn dbconn = new Dbconn();
        try {
            Connection conn = dbconn.dbconn();
            PreparedStatement stmt = conn.prepareStatement(" update customer set first_name =?,last_name=?,email_address=?,street_address=?,city=?,state=?,account_type=?,pan_card=?,mobile_no=?,aadhar_card=?,postal_code=? where acc_no=?");
            stmt.setString(1, first_name);
            stmt.setString(2, last_name);
            stmt.setString(3, email_add);
            stmt.setString(4, street_add);
            stmt.setString(5, city);
            stmt.setString(6, state);
            stmt.setString(7, account_type);
            stmt.setString(8, pan_card);
            stmt.setString(9, mobile_no);
            stmt.setString(10, aadhar_no);
            stmt.setString(11, pincode);
            stmt.setString(12, acc_no);
            
          int i =  stmt.executeUpdate();
          if(i>0){
          
              System.out.println("ready updated");
              request.getSession().setAttribute("model", "Customer Info Updated Successfully");
              response.sendRedirect("admin/userInfo.jsp");
          
          
          }
        } catch (Exception e) {
            System.out.println(e);
        }

    }

}
