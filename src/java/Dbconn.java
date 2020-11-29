/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;
/**
 *
 * @author deep
 */
public class Dbconn {
    
    public Connection dbconn() throws ClassNotFoundException, SQLException{
        Connection conn;
        System.out.println("hii conn");
        Class.forName("com.mysql.jdbc.Driver");  
 conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/bank","root","");  
        return  conn;
    }
}
