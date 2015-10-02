<%-- 
    Document   : index
    Created on : 30.09.2015, 11:36:54
    Author     : Jan-Christian Hinz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaPizza</title>
        <jsp:include page="header.jsp" />   
        
    </head>
    <body bgcolor="#FAAC58">
        <h2>1. Register New Customer</h2>
        
        <table>
        <form action="zweite.jsp" method="get"> <%-- get oder post ist java egal... --%>
            <tr><td>First name:</td><td> <input type="text" name="firstName" value="" /></td></tr>    
            <tr><td>Last name:</td><td> <input type="text" name="lastName" value="" /></td></tr>
            <tr><td>Street name:</td><td> <input type="text" name="streetName" value="" /></td></tr>
            <tr><td>House Number:</td><td> <input type="text" name="houseNumber" value="" /></td></tr>
            <tr><td>City:</td><td> <input type="text" name="cityName" value="" /></td></tr>
            <tr><td>Zipcode:</td><td> <input type="text" name="zipAdress" value="" /></td></tr>
            <tr><td></br><input type="submit" value="OK" /></td></tr>
        </form>
        </table>
                
    </body>
</html>
