<%-- 
    Document   : vierte
    Created on : 01.10.2015, 23:22:49
    Author     : jan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="myNewCustomer" scope="session" class="com.ibb.model.Customer" />
<jsp:useBean id="myCatalog" scope="session" class="com.ibb.model.Catalog" />
<jsp:useBean id="myOrder" scope="session" class="com.ibb.model.Order" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaPizza</title>
        <jsp:include page="header.jsp" />                   
    </head>
    <body bgcolor="#FAAC58">
        <h2>4. Order complete! Thank You!</h2>
        <%
            out.print("</br></br>Your order was successfully placed and is getting processed right now. </br>Keep calm and wait for a knock on your door.");
            
        %>
    </body>
</html>
