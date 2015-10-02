package com.ibb.model;
/**
 * @author Jan-Christian Hinz
 */
public class Invoice {
    
    private String invoiceNumber;
    private Customer invoiceCustomer;
    private Order invoiceOrder;

    public String getInvoiceNumber() {
        return invoiceNumber;
    }

    public void setInvoiceNumber(String invoiceNumber) {
        this.invoiceNumber = invoiceNumber;
    }

    public Customer getInvoiceCustomer() {
        return invoiceCustomer;
    }

    public void setInvoiceCustomer(Customer invoiceCustomer) {
        this.invoiceCustomer = invoiceCustomer;
    }

    public Order getInvoiceOrder() {
        return invoiceOrder;
    }

    public void setInvoiceOrder(Order invoiceOrder) {
        this.invoiceOrder = invoiceOrder;
    }
}
