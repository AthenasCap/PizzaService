
package com.ibb.model;
import java.util.ArrayList;
import java.util.List;
/**
 * @author Jan-Christian Hinz
 */
public class Order {
    
    private int orderNumber;
    private String dateTime;
    private String ip;
    private String sessionId;
    private Customer orderCustomer;
    
    private List<PizzaItem> orderedItems = new ArrayList<>();

    public Order() {
             
    }    
    
    
    public int getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(int orderNumber) {
        this.orderNumber = orderNumber;
    }
 
    public Customer getOrderCustomer() {
        return orderCustomer;
    }

    public String getDateTime() {
        return dateTime;
    }

    public String getIp() {
        return ip;
    }
    
    public List<PizzaItem> getOrderedItems() {
        return orderedItems;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public void setOrderCustomer(Customer orderCustomer) {
        this.orderCustomer = orderCustomer;
    }

    public void setOrderedItems(List<PizzaItem> orderedItems) {
        this.orderedItems = orderedItems;
    }

}


