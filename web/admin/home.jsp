<%-- 
    Document   : home
    Created on : 26 Oct, 2020, 11:36:06 AM
    Author     : deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../componants/allLinks.jsp" %>
        <title>Home Page</title>
        <style>
          
            .home-right{
                height:inherit;
                 margin-top: 50px;
            }
            .main{
                height: 100vh;
                
            }
        </style>
    </head>
    <body>
        <%@include file="../componants/navBar.jsp" %>

        <% //session = request.getSession(false);
            String user = (String) session.getAttribute("loggedinUser");
            if (user == null) {
                response.sendRedirect("../index.jsp");
            } else {%>
        <div class="main flex">
          <%@include file="leftDeshboard.jsp" %>
            <div class="home-right w-full flex items-center justify-center">
               
                
                
                
                <div class="bg-white shadow overflow-hidden sm:rounded-lg">
  <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
    <h3 class="text-lg leading-6 font-medium text-gray-900">
      Employee Information
    </h3>
    <p class="mt-1 max-w-2xl text-sm leading-5 text-gray-500">
      Personal details and application.
    </p>
  </div>
  <div>
    <dl>
      <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm leading-5 font-medium text-gray-500">
          Full name
        </dt>
        <dd class="mt-1 text-sm leading-5 text-gray-900 sm:mt-0 sm:col-span-2">
            <%= session.getAttribute("empname")%>
        </dd>
      </div>
      <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm leading-5 font-medium text-gray-500">
            Employee Designation
        </dt>
        <dd class="mt-1 text-sm leading-5 text-gray-900 sm:mt-0 sm:col-span-2">
          <%= session.getAttribute("empdesignation")%>
        </dd>
      </div>
      <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm leading-5 font-medium text-gray-500">
          Email address
        </dt>
        <dd class="mt-1 text-sm leading-5 text-gray-900 sm:mt-0 sm:col-span-2">
           <%= session.getAttribute("empemail")%>
        </dd>
      </div>
      <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm leading-5 font-medium text-gray-500">
          Employee Id
        </dt>
        <dd class="mt-1 text-sm leading-5 text-gray-900 sm:mt-0 sm:col-span-2">
          <%= session.getAttribute("empid")%>
        </dd>
      </div>
     
    
    </dl>
  </div>
</div>

            </div>
        </div>
        <%}%>


    </body>
</html>
