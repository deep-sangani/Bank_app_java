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
public class depositAmt extends HttpServlet {

    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       double  deposit_amt = Double.parseDouble(request.getParameter("deposit_amt"));
       String Particulars = request.getParameter("Particulars");
        try {
            String acc_no = (String)request.getSession().getAttribute("cus_acc_no");
            Dbconn dbconn = new Dbconn();
            Connection conn = dbconn.dbconn();
            PreparedStatement stmt = conn.prepareStatement("select * from customer where acc_no =?");
            stmt.setString(1,acc_no);
            
            ResultSet rs=stmt.executeQuery();
            if(rs.next()){
            double balance = rs.getDouble("balance");
              double updatedbalance = Double.sum(balance,deposit_amt);
                
              PreparedStatement stmt1 = conn.prepareStatement("insert into transaction (date,acc_no,deposit,particulers,balance) values (?,?,?,?,?)");
              currentDate date = new currentDate();
              
              stmt1.setString(1, date.date());
              stmt1.setString(2, acc_no);
              stmt1.setDouble(3, deposit_amt);
              stmt1.setString(4, Particulars);
              stmt1.setDouble(5, updatedbalance);
            int i =  stmt1.executeUpdate();
            
              PreparedStatement stmt12 = conn.prepareStatement("update customer set balance =? where acc_no =?");
              stmt12.setDouble(1, updatedbalance);
              stmt12.setString(2, acc_no);
          int j = stmt12.executeUpdate();
            
            
            if(i>0 && j>0){
                getImgString getImgString = new getImgString();
                String img = getImgString.getimg(request.getRealPath("/"), acc_no);
                System.out.println("deposit successfully....");
                request.getSession().setAttribute("model","Deposit amount successfully");
                  request.getSession().setAttribute("img",img);
                response.sendRedirect("admin/depositeBal.jsp");
            }else{
                 System.out.println("deposit not....");
            }
              
              
                
            }
            
            
           
           
        } catch (Exception e) {
            System.out.println(e);
        }
    }

   
}
