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
                padding-top: 20px;
                padding-left:20px;
                margin-bottom: 50px;
                margin-top: 5rem;


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
             String a = (String)session.getAttribute("model");
             if(a!=null){%>
                 <%@include file="createAccModel.jsp" %>
             <%}%>
        <div class="main flex ">
            <%@include file="leftDeshboard.jsp" %>
            <div class="home-right w-full ">
                <form action="../createAcc" method="POST" id="form" enctype='multipart/form-data' >
                    <div class="sm:w-9/12 sm:ml-4 sm:mr-4 ">
                        <div class="mt-10 sm:mt-0">
                            <div class="md:grid md:grid-cols-3 md:gap-6">
                                <div class="md:col-span-1">
                                    <div class="px-4 sm:px-0">
                                        <h3 class="text-lg font-medium leading-6 text-gray-900">Personal Information</h3>
                                        <p class="mt-1 text-sm leading-5 text-gray-600">
                                            Information of Account Holder
                                        </p>
                                    </div>
                                </div>
                                <div class="mt-5 md:mt-0 md:col-span-2">

                                    <div class="shadow overflow-hidden sm:rounded-md">
                                        <div class="px-4 py-5 bg-white sm:p-6">
<!--              here stsrt                              -->
                                            
                        <div class="shadow overflow-hidden sm:rounded-md">
                                            <div class="px-4 py-5 bg-white sm:p-6">
                                                <div class="grid grid-cols-6 gap-6">
                                                    

                                                    <div class="col-span-6 sm:col-span-3">
                                                        <label for="pan_card" class="block text-sm font-medium leading-5 text-gray-700">Upload Customer photo</label>
                                                        <input id="customer_photo" class="mt-1 form-input block w-full py-2 px-3 border-none rounded-md focus:outline-none  transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="customer_photo" required type="file">
                                                    </div>

                                                   

                                                </div>
                                            </div>
                                            <div class="px-4 py-3 bg-gray-50 text-right sm:px-6">

                                            </div>
<!--      finish-->
                                        </div>                     
                                            
                                            
<!--                                            here ended-->
                                            <div class="grid grid-cols-6 gap-6 mt-8">
                                                <div class="col-span-6 sm:col-span-3">
                                                    <label for="first_name" class="block text-sm font-medium leading-5 text-gray-700">First name</label>
                                                    <input id="first_name" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="first_name" required >
                                                </div>

                                                <div class="col-span-6 sm:col-span-3">
                                                    <label for="last_name" class="block text-sm font-medium leading-5 text-gray-700">Last name</label>
                                                    <input id="last_name" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="last_name" required>
                                                </div>

                                                <div class="col-span-6 sm:col-span-4">
                                                    <label for="email_address" class="block text-sm font-medium leading-5 text-gray-700">Email address</label>
                                                    <input id="email_address" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="email_address" required>
                                                </div>

                                                <div class="col-span-6 sm:col-span-3">
                                                    <label for="country" class="block text-sm font-medium leading-5 text-gray-700">Country / Region</label>
                                                    <select id="country" class="mt-1 block form-select w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="country">
                                                        <option value="United States">United States</option>
                                                        <option value="India">India</option>

                                                    </select>
                                                </div>

                                                <div class="col-span-6">
                                                    <label for="street_address" class="block text-sm font-medium leading-5 text-gray-700">Street address</label>
                                                    <input id="street_address" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="street_address" required>
                                                </div>

                                                <div class="col-span-6 sm:col-span-6 lg:col-span-2">
                                                    <label for="city" class="block text-sm font-medium leading-5 text-gray-700">City</label>
                                                    <input id="city" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="city" required>
                                                </div>

                                                <div class="col-span-6 sm:col-span-3 lg:col-span-2">
                                                    <label for="state" class="block text-sm font-medium leading-5 text-gray-700">State / Province</label>
                                                    <input id="state" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="state" required>
                                                </div>

                                                <div class="col-span-6 sm:col-span-3 lg:col-span-2">
                                                    <label for="postal_code" class="block text-sm font-medium leading-5 text-gray-700">ZIP / Postal</label>
                                                    <input id="postal_code" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="postal_code" required>
                                                </div>
                                            </div>
                                        </div>
                                       
                                    </div>

                                </div>
                            </div>

                            <div class="hidden sm:block">
                                <div class="py-5">
                                    <div class="border-t border-gray-200"></div>
                                </div>
                            </div>

                            <div class="mt-10 sm:mt-0">
                                <div class="md:grid md:grid-cols-3 md:gap-6">
                                    <div class="md:col-span-1">
                                        <div class="px-4 sm:px-0">
                                            <h3 class="text-lg font-medium leading-6 text-gray-900">Additional Information</h3>

                                        </div>
                                    </div>
                                    <div class="mt-5 md:mt-0 md:col-span-2">

                                        <div class="shadow overflow-hidden sm:rounded-md">
                                            <div class="px-4 py-5 bg-white sm:p-6">
                                                <fieldset>
                                                    <legend class="text-base leading-6 font-medium text-gray-900">Account Type</legend>
                                                    <div class="mt-4">
                                                        <div class="flex items-start">
                                                            <div class="flex items-center h-5">
                                                                <input id="account_type" type="radio" class="form-checkbox h-4 w-4 text-indigo-600 transition duration-150 ease-in-out" name="account_type" value="Seving">
                                                            </div>
                                                            <div class="ml-3 text-sm leading-5">
                                                                <label for="comments" class="font-medium text-gray-700">Seving</label>
                                                                <p class="text-gray-500">Saving Account interest rate is 6%.</p>
                                                            </div>
                                                        </div>
                                                        <div class="mt-4">
                                                            <div class="flex items-start">
                                                                <div class="flex items-center h-5">
                                                                    <input id="candidates" type="radio" class="form-checkbox h-4 w-4 text-indigo-600 transition duration-150 ease-in-out" name="account_type" value="Current Account">
                                                                </div>
                                                                <div class="ml-3 text-sm leading-5">
                                                                    <label for="candidates" class="font-medium text-gray-700">Current Account</label>
                                                                    <p class="text-gray-500">Current Account interest rate is 3%.</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="mt-4">
                                                            <div class="flex items-start">
                                                                <div class="flex items-center h-5">
                                                                    <input id="offers" type="radio" class="form-checkbox h-4 w-4 text-indigo-600 transition duration-150 ease-in-out" name="account_type" value="Salary Account">
                                                                </div>
                                                                <div class="ml-3 text-sm leading-5">
                                                                    <label for="offers" class="font-medium text-gray-700">Salary Account</label>
                                                                    <p class="text-gray-500">Salary Account interest rate is 4%. </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>

                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="hidden sm:block">
                                <div class="py-5">
                                    <div class="border-t border-gray-200"></div>
                                </div>
                            </div>

                            <div class="mt-10 sm:mt-0">
                                <div class="md:grid md:grid-cols-3 md:gap-6">
                                    <div class="md:col-span-1">
                                        <div class="px-4 sm:px-0">
                                            <h3 class="text-lg font-medium leading-6 text-gray-900">Identitical Information</h3>
                                            <p class="mt-1 text-sm leading-5 text-gray-600">
                                                Information Releted to finence
                                            </p>
                                        </div>
                                    </div>
                                    <div class="mt-5 md:mt-0 md:col-span-2">

                                        <div class="shadow overflow-hidden sm:rounded-md">
                                            <div class="px-4 py-5 bg-white sm:p-6">
                                                <div class="grid grid-cols-6 gap-6">
                                                    <div class="col-span-6 sm:col-span-3">
                                                        <label for="aadhar_card" class="block text-sm font-medium leading-5 text-gray-700">Aadhar Card No</label>
                                                        <input id="aadhar_card" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="aadhar_card" required>
                                                    </div>

                                                    <div class="col-span-6 sm:col-span-3">
                                                        <label for="pan_card" class="block text-sm font-medium leading-5 text-gray-700">Pan Card No</label>
                                                        <input id="pan_card" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="pan_card" required>
                                                    </div>

                                                    <div class="col-span-6 sm:col-span-3">
                                                        <label for="mobile_no" class="block text-sm font-medium leading-5 text-gray-700">Mobile Number</label>
                                                        <input id="mobile_no" class="mt-1 form-input block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5" name="mobile_no" required>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="px-4 py-3 bg-gray-50 text-right sm:px-6">

                                            </div>
                                        </div>
                                        
                                        
                                        
                                        
                                        
                                        
 
                                    </div>

                                </div>


                            </div>

                            <div class="px-4 py-4 bg-gray-50 text-center sm:px-6">
                                <input class="py-2 px-12 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 shadow-sm hover:bg-indigo-500 outline-none transition duration-150 ease-in-out" type="submit"/>


                                <input class="py-2 px-12 border border-transparent text-sm font-medium rounded-md text-white bg-red-600 shadow-sm hover:bg-red-500 outline-none transition duration-150 ease-in-out mt-4" type="reset"/>

                            </div> 




                        </div>
                    </div>
                </form>

            </div> 
        </div>


        <%}%>

    </body>

</html>
