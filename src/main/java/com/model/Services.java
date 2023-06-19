/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author Hp
 */
public class Services {

    private int id;
    private int vendorId;
    private String name;
    private String description;
    private Double price;

    public Services(int vendorId, String name, String description, double price) {
        this.vendorId = vendorId;
        this.name = name;
        this.description = description;
        this.price = price;
    }
    
    public Services(int id, int vendorId, String name, String description, double price){
        this.id = id;
        this.vendorId = vendorId;
        this.name = name;
        this.description = description;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVendorId() {
        return vendorId;
    }

    public void setVendorId(int vendorId) {
        this.vendorId = vendorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

}
