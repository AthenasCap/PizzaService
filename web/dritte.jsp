<%-- 
    Document   : dritte
    Created on : 30.09.2015, 11:59:01
    Author     : Jan-Christian Hinz
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
        <h2>3. Verify your order</h2>

        <%
            myOrder.setOrderCustomer(myNewCustomer); //(request.getParameter("firstName"));
            myOrder.setIp(request.getRemoteAddr());
            myOrder.setSessionId(request.getRequestedSessionId());   
            myOrder.getOrderedItems().clear();
            
            out.print("</br></br>Your order will be delivered to:</br></br>" + myOrder.getOrderCustomer().getFirstName() + " " + myOrder.getOrderCustomer().getLastName() +
                        "</br>" + myOrder.getOrderCustomer().getStreetName() + " " + myOrder.getOrderCustomer().getHouseNumber() + "</br>" + myOrder.getOrderCustomer().getZipAdress() +
                        " " + myOrder.getOrderCustomer().getCityName() + " </br></br>");
            
            for(int i = 0 ; i < (myCatalog.getPizzaItemCatalog().size()) ; i++){
                
                Integer j = i+1;//artikelnummer fängt bei 1 an zu zählen ... wir für eindeutige id benutzt: amountTextField1 ...2....3
                //if there are more than 0 Items selected, show these and their amount as previously sent via request
                if(!request.getParameter("amountTextField" + j.toString()).equals("0")){
                    
                        myCatalog.getPizzaItemCatalog().get(i).setOrderedAmount(request.getParameter("amountTextField" + j.toString()));
                        myOrder.getOrderedItems().add(myCatalog.getPizzaItemCatalog().get(i));        
                }       
            }
            
            out.print("<form action=\"vierte.jsp\" method=\"get\"> <table style=\"border-style: solid; border-color: black\">");
            out.print("<tr>" + "<td>" + "Order#  " + " </td> <td> " + "Type  " + " </td> <td> " + "Name" + " </td> <td> " + "Description" + " </td> <td> " + "Price" + " </td> <td> " + "Amount");
            
            double total=0;
            for(int i = 0 ; i < (myOrder.getOrderedItems().size()) ; i++){
                out.print("<tr>" + "<td>" + myOrder.getOrderedItems().get(i).getArtNr() + " </td> <td> " + myOrder.getOrderedItems().get(i).getItemType() + " </td> <td> " + myOrder.getOrderedItems().get(i).getName() + " </td> <td> " + myOrder.getOrderedItems().get(i).getProductDescr() + " </td> <td> $" + myOrder.getOrderedItems().get(i).getPrice() + " </td> <td> " + myOrder.getOrderedItems().get(i).getOrderedAmount() + " X</td> " + "</tr>");
                total=total+(Double.parseDouble(myOrder.getOrderedItems().get(i).getPrice()));
            }
            out.print("<tr>><td></td><td></td><td></td><td> </br></br>Total: $" + total + "</td></tr> <tr></br> <td> <input type=\"submit\" value=\"Order now!\"/> </td></tr> </table></ form>");
            out.print("</br></br></br></br></br></br>Yout current IP-Adress: "  +  myOrder.getIp() + "</br>Your current SessionID: " + myOrder.getSessionId());
        %> 
       
    </body>
</html>