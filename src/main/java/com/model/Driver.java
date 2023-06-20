/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author MUHAMMAD FAUZUL AZIM BIN IMRAN HAYAT
 */
public class Driver {
    //instance variable
    private int driverid;
    private String username;
    private String password;
    private String name;
    private String email;
    private String address;
    private String phonenum;
    private String noplate;
    private String status;
    
    public Driver(){}

    public Driver(int driverid, String username, String password, String name, String email, String address, String phonenum, String noplate, String status) {
        this.driverid = driverid;
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phonenum = phonenum;
        this.noplate = noplate;
        this.status = status;
    }

    public Driver(String username, String password, String name, String email, String address, String phonenum, String noplate, String status) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phonenum = phonenum;
        this.noplate = noplate;
        this.status = status;
    }

    public Driver(String username, String password, String name, String email, String address, String phonenum, String noplate) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phonenum = phonenum;
        this.noplate = noplate;
    }

    
    
    /**
     * @return the driverid
     */
    public int getDriverid() {
        return driverid;
    }

    /**
     * @param driverid the driverid to set
     */
    public void setDriverid(int driverid) {
        this.driverid = driverid;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the phonenum
     */
    public String getPhonenum() {
        return phonenum;
    }

    /**
     * @param phonenum the phonenum to set
     */
    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    /**
     * @return the noplate
     */
    public String getNoplate() {
        return noplate;
    }

    /**
     * @param noplate the noplate to set
     */
    public void setNoplate(String noplate) {
        this.noplate = noplate;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
