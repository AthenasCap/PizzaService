package com.ibb.model;
import java.util.ArrayList;
import java.util.List;
/**
 * @author Jan-Christian Hinz
 */
public class Catalog {
   
    private final List<PizzaItem> pizzaItemCatalog = new ArrayList<>();

    public Catalog() {
        
        pizzaItemCatalog.clear();
        pizzaItemCatalog.add(new PizzaItem("1", "Pizza","'Diavolo'", "Hot'n'spicy!", "7.50", "0"));
        pizzaItemCatalog.add(new PizzaItem("2", "Pizza","'Tonno'", "Seaside style", "7.50", "0")); 
        pizzaItemCatalog.add(new PizzaItem("3", "Pizza","'Hawaii'", "Aloha!", "6.50", "0")); 
        pizzaItemCatalog.add(new PizzaItem("4", "Pizza","'Tradizionale'", "Traditional Salami", "5.00", "0")); 
        pizzaItemCatalog.add(new PizzaItem("5", "Pizza","'The Bugfixer'", "With everything, and tons of it...", "10.80", "0")); 
        pizzaItemCatalog.add(new PizzaItem("6", "Ragù","'alla Bolognese'", "The classic", "6.20", "0"));
        pizzaItemCatalog.add(new PizzaItem("7", "Ragù","'alla Napoletana'", "Mama's special receipt", "5.70", "0"));
    }

    public List<PizzaItem> getPizzaItemCatalog() {
        return pizzaItemCatalog;
    }
}
