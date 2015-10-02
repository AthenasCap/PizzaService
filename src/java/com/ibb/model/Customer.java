package com.ibb.model;
/**
 * @author Jan-Christian Hinz
 */
public class Customer {
    
    private String lastName;
    private String firstName;
    private String cityName;
    private String zipAdress;
    private String streetName;
    private String houseNumber;

    public Customer() {
    }

    public Customer(String lastName, String firstName, String cityName, String zipAdress, String streetName, String houseNumber) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.cityName = cityName;
        this.zipAdress = zipAdress;
        this.streetName = streetName;
        this.houseNumber = houseNumber;
    }

    public String getLastName() {
        return lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getCityName() {
        return cityName;
    }

    public String getZipAdress() {
        return zipAdress;
    }

    public String getStreetName() {
        return streetName;
    }

    public String getHouseNumber() {
        return houseNumber;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public void setZipAdress(String zipAdress) {
        this.zipAdress = zipAdress;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public void setHouseNumber(String houseNumber) {
        this.houseNumber = houseNumber;
    }   
}
