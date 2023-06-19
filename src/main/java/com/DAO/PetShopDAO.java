package com.dao;

import com.model.PetShop;
import com.model.Service;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PetShopDAO {
     Connection connection = null;
    private String jdbcURL = "jdbc:mysql://localhost/petgrabsystem";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";
    private static final String INSERT_PETSHOP_SQL = "INSERT INTO petshop(shopid,username,password,shopname,shopaddress,phonenum,imagepetshop) VALUES (?,?,?,?,?,?,?);";
    private static final String SELECT_PETSHOP_BY_ID = "SELECT shopid,username,password,shopname,shopaddress,phonenum,imagepetshop FROM petshop WHERE shopid=?";
    private static final String SELECT_ALL_PETSHOP = "SELECT * FROM petshop";
    private static final String SELECT_ALL_SERVICE = "SELECT * FROM service WHERE shopid=?";
    private static final String UPDATE_PETSHOP_SQL = "UPDATE customer SET username=?,password=?,name=?,email=?,address=?,phonenum=? WHERE custid=?";

     protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
     public PetShop selectPetshop(int id) {
        PetShop pet = null;

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_PETSHOP_BY_ID)) {
            ps.setInt(1, id);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String username = rs.getString("username");
                String password = rs.getString("password");
                String shopname = rs.getString("shopname");
                String shopaddress = rs.getString("shopaddress");               
                String phonenum = rs.getString("phonenum");   
                byte imagepetshop = rs.getByte("imagepetshop");
                pet = new PetShop(id, username, password, shopname, shopaddress, phonenum,imagepetshop);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pet;
    }
     public List<PetShop> selectAllPetShop() {
        List<PetShop> pet = new ArrayList<>();
        
        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_ALL_PETSHOP);) {
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int shopid = rs.getInt("shopid");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String shopname = rs.getString("shopname");
                String shopaddress = rs.getString("shopaddress");               
                String phonenum = rs.getString("phonenum");        
                byte imagepetshop = rs.getByte("imagepetshop");
                pet.add( new PetShop(shopid, username, password, shopname, shopaddress, phonenum,imagepetshop));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pet;
    }
      public List<Service> selectAllService2(int id) {
        List<Service> ser = new ArrayList<>();
        
        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_ALL_SERVICE);) {
            System.out.println(ps);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int serviceid = rs.getInt("serviceid");
                int shopid = rs.getInt("shopid");
                String description = rs.getString("description");
                double price = rs.getDouble("price");                                                           
                                      
                ser.add( new Service(serviceid, shopid,description,price));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ser;
    }
     public Service selectAllService(int id) {
        Service ser = null;

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_ALL_SERVICE)) {
            ps.setInt(1, id);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int shopid = rs.getInt("shopid");
                String description = rs.getString("description");
                double price = rs.getDouble("price");                                                           
                ser = new Service(id, shopid,description,price);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ser;
    }
     
}
