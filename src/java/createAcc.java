/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Base64;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author deep
 */
@MultipartConfig
public class createAcc extends HttpServlet {
public String ganrateAcc(){
            
    Random rand = new Random();
    String card = "DS";
    for (int i = 0; i < 14; i++)
    {
        int n = rand.nextInt(10) + 0;
        card += Integer.toString(n);
        }
    return card;
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email_address = request.getParameter("email_address");
        String street_address = request.getParameter("street_address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
      String postal_code = request.getParameter("postal_code");
        String account_type = request.getParameter("account_type");
        String aadhar_card = request.getParameter("aadhar_card");
        String pan_card = request.getParameter("pan_card");
        String mobile_no = request.getParameter("mobile_no");
       Part part = request.getPart("customer_photo");
  
        
        
        
        

      
        Dbconn dbconn = new Dbconn();
        try {
            Connection conn = dbconn.dbconn();
            PreparedStatement stmt = conn.prepareStatement("insert into customer (first_name,last_name,email_address,street_address,city,state,postal_code,account_type,aadhar_card,pan_card,mobile_no,acc_no) values(?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1, first_name);
            stmt.setString(2, last_name);
            stmt.setString(3, email_address);
            stmt.setString(4, street_address);
            stmt.setString(5, city);
            stmt.setString(6, state);
            stmt.setString(7, postal_code);
            stmt.setString(8, account_type);
            stmt.setString(9, aadhar_card);
            stmt.setString(10, pan_card);
            stmt.setString(11, mobile_no);
            String accno = ganrateAcc();
            stmt.setString(12, accno);
           
            InputStream is = part.getInputStream();
        byte[] img = new byte[is.available()];
        is.read(img);
        String path =request.getRealPath("/") + "image" + File.separator + accno;
         System.out.println(path);
        FileOutputStream fout = new FileOutputStream(path);
        fout.write(img);
        
         String base64Image = Base64.getEncoder().encodeToString(img);
        fout.close();
            
            
            
            
            
      int rs = stmt.executeUpdate();
      if(rs>0){
          request.getSession().setAttribute("img", base64Image);
          request.getSession().setAttribute("model", accno);
            response.sendRedirect("admin/createAcc.jsp");
      }
      
     
        } catch (Exception e) {
            System.out.println(e);
        }

    }

}
