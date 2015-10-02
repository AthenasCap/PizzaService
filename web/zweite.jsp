<%-- 
    Document   : zweite
    Created on : 30.09.2015, 11:44:14
    Author     : Jan-Christian Hinz
--%>

<%@page import="com.ibb.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="myNewCustomer" scope="session" class="com.ibb.model.Customer" />
<jsp:useBean id="myCatalog" scope="session" class="com.ibb.model.Catalog" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaPizza</title>
        <jsp:include page="header.jsp" />   
    </head>
    <body bgcolor="#FAAC58">
        <h2>2. Choose your items</h2> 
        <%
            myNewCustomer.setFirstName(request.getParameter("firstName"));
            myNewCustomer.setLastName(request.getParameter("lastName"));
            myNewCustomer.setStreetName(request.getParameter("streetName"));
            myNewCustomer.setHouseNumber(request.getParameter("houseNumber"));
            myNewCustomer.setCityName(request.getParameter("cityName"));
            myNewCustomer.setZipAdress(request.getParameter("zipAdress"));
            
            out.println("</br></br>Dear Mr " + myNewCustomer.getLastName());
            out.println(",</br>please feel free, to select any items you would like to purchase:</br>------------------------------------------------------------------------------</br></br></br>");
	  
            out.print("<form action=\"dritte.jsp\" method=\"get\"> <table>");
            out.print("<tr>" + "<td>" + "Order#  " + " </td> <td> " + "Type  " + " </td> <td> " + "Name" + " </td> <td> " + "Description" + " </td> <td> " + "Price" + " </td> <td> " + "Amount");
            
            for(int i = 0; i < myCatalog.getPizzaItemCatalog().size() ;i++){
                out.print("<tr>" + "<td>" + myCatalog.getPizzaItemCatalog().get(i).getArtNr() + " </td> <td> " + myCatalog.getPizzaItemCatalog().get(i).getItemType() + " </td> <td> " + myCatalog.getPizzaItemCatalog().get(i).getName() + " </td> <td> " + myCatalog.getPizzaItemCatalog().get(i).getProductDescr() + " </td> <td> $" + myCatalog.getPizzaItemCatalog().get(i).getPrice() + " </td> <td> " + "<input type=\"text\" name=\"amountTextField"+ myCatalog.getPizzaItemCatalog().get(i).getArtNr() +"\" value=\"0\" size=\"5\" /> " + " </td> " + "</tr>");
            }
            
            out.print("<tr><td> <input type=\"submit\" value=\"Order now!\"/> </td></tr> </table></ form>");
        %>
    </body>
</html>
