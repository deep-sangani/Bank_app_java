<%-- 
    Document   : withdrawBal
    Created on : 27 Oct, 2020, 10:10:49 AM
    Author     : deep
--%>

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
                response.sendRedirect("../index.jsp");
            } else {%>


        <%
            String a = (String) session.getAttribute("model");
            if (a=="Withdraw amount successfully") {%>
        <%@include file="infoMedel.jsp" %>
        <%}%>
        <div class="main flex ">
            <%@include file="leftDeshboard.jsp" %>
            <div class="home-right w-full ">

                <div class="sm:w-9/12 sm:ml-4 sm:mr-4 ">
                    <div class="mt-10 sm:mt-0">

                        <div class="hidden sm:block">
                            <div class="py-5">
                                <div class="border-t border-gray-200"></div>
                            </div>
                        </div>

                        <div class="mt-10 sm:mt-0">
                            <div class="md:grid md:grid-cols-3 md:gap-6">
                                <div class="md:col-span-1">
                                    <div class="px-4 sm:px-0">
                                        <h3 class="text-lg font-medium leading-6 text-gray-900">Withdraw Amount</h3>
                                        <p class="mt-1 text-sm leading-5 text-gray-600">
                                            Here you can withdraw customer's money in form of cash
                                        </p>
                                    </div>
                                </div>
                                <div class="mt-5 md:mt-0 md:col-span-2">

                                    <div class="shadow overflow-hidden sm:rounded-md">
                                        <div class="px-4 py-5 bg-white sm:p-6">
                                            <form action="../depositeBal" method="POST" id="form" >
                                                <input type="hidden" value="withdraw" name="jspname">
                                                <% if (session.getAttribute("hasaccount") == "not found") {%>
                                                <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative mb-8" role="alert">
                                                   
                                                    <span class="block sm:inline"><h1>Account is not found !!</h1></span>
                                                    <span class="absolute top-0 bottom-0 right-0 px-4 py-3">
                                                    </span>
                                                </div>

                                                <%};%>
                                                <div class="grid grid-cols-6 gap-6 px-4 py-5">

                                                    <div class="col-span-6 sm:col-span-3">
                                                        <label for="aadhar_card" class="block text-sm font-medium leading-5 text-gray-700"> Enter Customer's First Name</label>
                                                        <input id="aadhar_card" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="cus_first_name" required>
                                                    </div>

                                                    <div class="col-span-6 sm:col-span-3">
                                                        <label for="pan_card" class="block text-sm font-medium leading-5 text-gray-700">Enter Customer's Last Name</label>
                                                        <input id="pan_card" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="cus_last_name" required>

                                                    </div>

                                                    <div class="col-span-6 sm:col-span-3">
                                                        <label for="pan_card" class="block text-sm font-medium leading-5 text-gray-700">Enter 16 Digit Account No</label>
                                                        <input id="pan_card" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="acc_no" required>

                                                    </div>

                                                    <div class="col-span-6 flex items-center justify-center">
                                                        <button class="py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 shadow-sm hover:bg-indigo-500 focus:outline-none transition duration-150 ease-in-out" type="submit">Check Details</button>

                                                    </div>

                                                </div>
                                            </form>
                                                <br/>
                                            <%
                                                     if (session.getAttribute("hasaccount") == "found") {%>
                                                     <form action="../withdrawAmt" method="POST">
                                            <div class="grid grid-cols-6 gap-6 px-4 pt-12">
                                               
                                                <div class="col-span-6 sm:col-span-3">
                                                    <label for="aadhar_card" class="block text-sm font-medium leading-5 text-gray-700">Enter withdraw Amount</label>
                                                    <input id="aadhar_card" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="withdraw_amt" required>
                                                </div>
                                                  <div class="col-span-6 sm:col-span-3">
                                                    <label for="aadhar_card" class="block text-sm font-medium leading-5 text-gray-700">Enter Particulars</label>
                                                    <input id="aadhar_card" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="Particulars" required>
                                                </div>
                                                
                                                 <div class="col-span-6 flex items-center justify-center">
                                                        <button class="py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 shadow-sm hover:bg-indigo-500 focus:outline-none transition duration-150 ease-in-out" type="submit">Withdraw</button>

                                                    </div>
                                             
                                            </div>
      </form>

                                            <%session.setAttribute("hasaccount", null);
                                                         }%>                                        
                                        </div>

                                    </div>


                                </div>

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

