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
public class userInfo extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        Dbconn dbconn = new Dbconn();
        try {
             Connection conn = dbconn.dbconn();
             PreparedStatement stmt = conn.prepareStatement("select * from customer where acc_no = ?");
             String acc_no = (String)request.getAttribute("acc_no");
             stmt.setString(1,acc_no );
          ResultSet rs =   stmt.executeQuery();
          String[] user_info = new String[13];
          if(rs.next()){
              
              for (int i = 1; i <=12; i++) {
                  user_info[i] = rs.getString(i);
              }
          request.getSession().setAttribute("balance", rs.getString("balance"));
         
          
          }
           getImgString imgString = new getImgString();
       String imgstr= imgString.getimg(request.getRealPath("/"),acc_no );
          
          request.getSession().setAttribute("user_info", user_info);
          request.getSession().setAttribute("img", imgstr);
          response.sendRedirect("admin/userInfo.jsp");
        } catch (Exception e) {
            System.out.println(e);
        }
    }

   

}
