<%-- 
    Document   : depositeBal
    Created on : 27 Oct, 2020, 10:10:31 AM
    Author     : deep
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../componants/allLinks.jsp" %>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../componants/allLinks.jsp" %>
        <title>Home Page</title>
        <style>


            .home-right{
                padding-top: 20px;
                padding-left:20px;
                margin-bottom: 50px;
                margin-top: 5rem;
                min-height: 83vh;


            }
        </style>
    </head>
    <body>

        <%@include file="../componants/navBar.jsp" %>
        
        

        <% //session = request.getSession(false);
            String user = (String) session.getAttribute("loggedinUser");
            if (user == null) {
                response.sendRedirect("index.jsp");
            } else {%>

<div class="main flex ">
            <%@include file="leftDeshboard.jsp" %>
            <div class="home-right w-4/5 ">
<div class="flex flex-col">
  <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
    <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
      <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
        <table class="min-w-full divide-y divide-gray-200">
          <thead>
            <tr>
              <th class="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                Date
              </th>
              <th class="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
               Account Number
              </th>
              <th class="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                Deposit
              </th>
              <th class="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
              Withdraw
              </th>
               <th class="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
              Particulers
              </th>
               <th class="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
              Balance
              </th>
              <th class="px-6 py-3 bg-gray-50"></th>
            </tr>
          </thead>
          
          <tbody class="bg-white divide-y divide-gray-200">
            <% 
                
        Class.forName("com.mysql.jdbc.Driver");  
 Connection conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/bank","root","");  
      Statement stmt=  conn.createStatement();
     ResultSet rs = stmt.executeQuery("select * from transaction");
     
while (rs.next()) {  %>      
        
    

            <tr>
              <td class="px-6 py-4 whitespace-no-wrap">
               
                 
                 
                    <div class="text-sm leading-5 font-medium text-gray-900">
                        <%= rs.getString("date") %>
                    </div>
                   
                
              </td>
              <td class="px-6 py-4 whitespace-no-wrap">
                <div class="text-sm leading-5 font-medium text-gray-900""> <%= rs.getString("acc_no") %></div>
                
              </td>
              <td class="px-6 py-4 whitespace-no-wrap">
               <div class="text-sm leading-5 font-medium  text-gray-900"> <%= rs.getString("deposit") %></div>
                
              </td>
              </td>
              <td class="px-6 py-4 whitespace-no-wrap ">
                <div class="text-sm leading-5 text-gray-900 font-medium "> <%= rs.getString("withdraw") %></div>
              </td>
              <td class="px-6 py-4 whitespace-no-wrap  ">
                 <div class="text-sm leading-5 text-gray-900 font-medium "> <%= rs.getString("particulers") %></div>
              </td>
              <td class="px-6 py-4 whitespace-no-wrap  ">
                 <div class="text-sm leading-5 text-gray-900 font-medium "><%= rs.getString("balance") %></div>
              </td>
            </tr>

         
    
    
    
    <%}  %>
            
            
            
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
      
        




            </div> 



        </div>


        <%session.setAttribute("hasaccount", null);
                                                         }%>   

    </body>

</html>


