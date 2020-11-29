<%-- 
    Document   : loginadmin
    Created on : 26 Oct, 2020, 10:13:21 AM
    Author     : deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="componants/allLinks.jsp" %>
        <title>Login | Employee</title>
        <style>
            .container{
                height: 100vh;
               
            }
        </style>
    </head>
    <body>
        <%@include file="componants/navBar.jsp" %>
      

        <!--       form-->
        <div class="container mx-auto flex items-center justify-center ">
            <div class="left hidden lg:flex">
                <img height="60%" width="70%" src="img/login.svg"/>
            </div>
            <div class="right"> 
                <% if (getServletContext().getAttribute("error") != null) {%>
                <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative mb-8" role="alert">
                    <strong class="font-bold">Please!</strong>
                    <span class="block sm:inline"><%= getServletContext().getAttribute("error")%></span>
                    <span class="absolute top-0 bottom-0 right-0 px-4 py-3">
                    </span>
                </div>

                <%};
            getServletContext().setAttribute("error", null);%>

                <div class="w-full max-w-xs ">
                    <form class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4" action="loginadmin"method="POST">
                        <div class="mb-4">
                            <label class="block text-gray-700 text-sm font-bold mb-2" for="username">
                                Empolyee Id
                            </label>
                            <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="username" type="text" placeholder="Emp Id" name="empid">
                        </div>
                        <div class="mb-6">
                            <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
                                Password
                            </label>
                            <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" id="password" type="password" placeholder="******************" name="pass">

                        </div>
                        <div class="flex items-center justify-between">
                            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="">
                                Sign In
                            </button>
                          
                        </div>
                    </form>
                    <p class="text-center text-gray-500 text-xs">
                        &copy;2020 Deep Sangani. All rights reserved.
                    </p>
                </div></div>
        </div>
    </body>
</html>
