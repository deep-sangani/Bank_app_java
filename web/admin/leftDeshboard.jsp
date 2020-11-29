<%-- 
    Document   : leftDeshboard
    Created on : 27 Oct, 2020, 3:41:52 PM
    Author     : deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    .home-left{
                height:inherit;
                background: #19366f;
                 margin-top: 3rem;

            }
</style>

 <div class="home-left md:w-64 text-teal-100 pt-12">
                 <div class="h-12 flex items-center mb-1 cursor-pointer ml-4">
                    <a href="./home.jsp" class="flex items-center justify-center"><i class="fa fa-tachometer fa-lg mr-4 " aria-hidden="true"></i><h1 class="hidden md:flex">Dashboard</h1></a>
                </div>
                <div class="h-12 flex items-center mb-1 cursor-pointer ml-4">
                    <a href="./createAcc.jsp" class="flex items-center justify-center"><i class="fa fa-calculator fa-lg mr-4 " aria-hidden="true"></i><h1 class="hidden md:flex">Create Account</h1></a>
                </div>
                <div class="h-12 flex items-center ml-4 mb-1 cursor-pointer">
                    <a href="./depositeBal.jsp" class="flex items-center justify-center"><i class="fa fa-university fa-lg mr-4" aria-hidden="true"></i><h1 class="hidden md:flex">Deposite Balance</h1></a>
                </div>
                <div class="h-12 flex items-center ml-4 mb-1 cursor-pointer">
                    <a href="./withdrawBal.jsp" class="flex items-center justify-center"><i class="fa fa-credit-card-alt fa-lg mr-4" aria-hidden="true"></i><h1 class="hidden md:flex">Withdraw Balance</h1></a>
                </div>
                
              
                <div class="h-12 flex items-center ml-4 mb-1 cursor-pointer">
                    <a href="./userInfo.jsp"class="flex items-center justify-center" ><i class="fa fa-info-circle fa-lg mr-4" aria-hidden="true"></i><h1 class="hidden md:flex">User Info</h1></a>
                </div>
                <div class="h-12 flex items-center ml-4 mb-1 cursor-pointer">
                    <a href="./deleteAcc.jsp" class="flex items-center justify-center"><i class="fa fa-trash fa-lg mr-4" aria-hidden="true"></i><h1 class="hidden md:flex">Delete Account</h1></a>
                </div>
     <div class="h-12 flex items-center ml-4 mb-1 cursor-pointer">
                    <a href="./transaction.jsp" class="flex items-center justify-center"><i class="fa fa-money fa-lg mr-4" aria-hidden="true"></i><h1 class="hidden md:flex">Transaction</h1></a>
                </div>
            </div>