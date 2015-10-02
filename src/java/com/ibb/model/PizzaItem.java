package com.ibb.model;
/**
 * @author Jan-Christian Hinz
 */
public class PizzaItem{
    
    private String itemType; //To be able to sort items later
    private String name;
    private String price;
    private String artNr;
    private String productDescr;
    private String orderedAmount;
    
    public PizzaItem() {
    }

    public PizzaItem(String artNr, String itemType, String name, String productDescr, String price, String orderedAmount) {
        this.itemType = itemType;
        this.name = name;
        this.price = price;
        this.artNr = artNr;
        this.productDescr = productDescr;
        this.orderedAmount=orderedAmount;
    }

    public String getItemType() {
        return itemType;
    }

    public String getName() {
        return name;
    }

    public String getPrice() {
        return price;
    }

    public String getArtNr() {
        return artNr;
    }

    public String getProductDescr() {
        return productDescr;
    }

    public String getOrderedAmount() {
        return orderedAmount;
    }

    public void setOrderedAmount(String orderedAmount) {
        this.orderedAmount = orderedAmount;
    }
}
