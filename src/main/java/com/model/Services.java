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

    private int serviceid;
    private int shopid;
    private String name;
    private String description;
    private double price;

    public Services(){
        
    }
    public Services( int shopid,String name, String description, double price) {
        super();
        this.name=name;
        this.shopid = shopid;
        this.description = description;
        this.price = price;
    }
    public Services(int serviceid, int shopid, String name, String description, double price) {
        super();
        this.serviceid = serviceid;
        this.shopid = shopid;
        this.description = description;
        this.price = price;
    }

    public int getServiceid() {
        return serviceid;
    }

    public void setServiceid(int serviceid) {
        this.serviceid = serviceid;
    }

    public int getShopid() {
        return shopid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setShopid(int shopid) {
        this.shopid = shopid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    

}
