/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author yoonj
 */
public class Customer {
    private int custid;
    private String username;
    private String password;
    private String name;
    private String email;
    private String address;
    private String phonenum;
    private String dob;

    public Customer() {
    }
  
    public Customer( String username, String password, String name, String email, String address, String phonenum, String dob) {
        super();
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phonenum = phonenum;
        this.dob = dob;
    }
    
    public Customer(int custid, String username, String password, String name, String email, String address, String phonenum, String dob) {
        this.custid = custid;
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phonenum = phonenum;
        this.dob = dob;
    }

    public int getCustid() {
        return custid;
    }

    public void setCustid(int custid) {
        this.custid = custid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
    
}
