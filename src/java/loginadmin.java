/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.Base64;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deep
 */
public class loginadmin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       
        PrintWriter out = response.getWriter();
       String employid = request.getParameter("empid");
        String pass = request.getParameter("pass");
        
        try {
           Connection conn;
       
      Dbconn dbconn = new Dbconn();
    conn = dbconn.dbconn();
      PreparedStatement stmt = conn.prepareStatement("select * from emp where empid=? and password=?");
      stmt.setString(1, employid);
      stmt.setString(2, pass);
       HttpSession session = request.getSession();
  ResultSet rs = stmt.executeQuery();
   employee emp = new employee();
            if (rs.next()) {                
                emp.setName(rs.getString("name"));
                emp.setDesignation(rs.getString("designation"));
                emp.setEmail(rs.getString("email"));
                emp.setEmpid(rs.getString("empid"));
               getImgString getString = new getImgString();
               String  base64Image = getString.getimg(request.getRealPath("/"),employid);
                
                
                
         session.setAttribute("empname", emp.getName());
            session.setAttribute("empemail", emp.getEmail());
             session.setAttribute("empdesignation", emp.getDesignation());
              session.setAttribute("empid", emp.getEmpid());
              session.setAttribute("emp_photo", base64Image);

            }
           
            
            
          
// session.setAttribute("name", "");
//            session.setAttribute("email", "");
//             session.setAttribute("designamtion","");
//              session.setAttribute("empid","");
//           
          
            
           
            
           
         
            
            if(emp.getEmpid() == null){
             getServletContext().setAttribute("error", "insert Valid EmpId and password");
              response.sendRedirect("index.jsp");
          
            }
            else{
                
         
             
                session.setAttribute("loggedinUser",emp.getEmpid());
//                RequestDispatcher rd = request.getRequestDispatcher("admin/home.jsp");
//            rd.forward(request, response);
response.sendRedirect("admin/home.jsp");
            }
            
            
      
        } catch (Exception e) {
            System.out.println(e);  
        }
       
    }


}
