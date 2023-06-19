/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.Vendor;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hp
 */
public class VendorDAO {

    Connection connection = null;
    private final String jdbcURL = "jdbc:mysql://localhost:3306/petgrabsystem";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "";

    private static final String INSERT_VENDOR_SQL = "INSERT INTO vendor(name, phone, address, email ) values(?,?,?,?);";
    private static final String SELECT_VENDOR_BY_ID_SQL = "SELECT * FROM vendor where id=?;";
    private static final String SELECT_ALL_VENDOR_SQL = "SELECT * FROM vendor;";
    private static final String DELETE_VENDOR_SQL = "delete from vendor where id=?;";
    private static final String UPDATE_ORDER_SQL = "update orderlist set custName=?,phone=?,grandtotal=?,orderStatus=? where id=?;";
    
    public VendorDAO() {
    }

    protected Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<Vendor> selectAllOrder() {
        List<Vendor> vendors = new ArrayList<>();

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_ALL_VENDOR_SQL);) {
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String email = rs.getString("email");
                vendors.add(new Vendor(id, name, phone, address, email));
            }
        } catch (SQLException e) {
        }
        return vendors;
    }

    public void createVendor(Vendor vendor) throws SQLException {
        System.out.println(INSERT_VENDOR_SQL);

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(INSERT_VENDOR_SQL)) {
            ps.setString(1, vendor.getName());
            ps.setString(2, vendor.getPhone());
            ps.setString(3, vendor.getAddress());
            ps.setString(4, vendor.getEmail());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Vendor getVendorById(int id) throws SQLException {
        Vendor vendor = null;
        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_VENDOR_BY_ID_SQL)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String email = rs.getString("email");
                vendor = new Vendor(id, name, phone, address, email);
            }
        }
        return vendor;
    }

    public boolean deleteVendor(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(DELETE_VENDOR_SQL)) {
            ps.setInt(1, id);
            rowDeleted = ps.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateVendor(Vendor vendor) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(UPDATE_ORDER_SQL)) {
            ps.setString(1, vendor.getName());
            ps.setString(2, vendor.getPhone());
            ps.setString(3, vendor.getAddress());
            ps.setString(4, vendor.getEmail());
            ps.setInt(5, vendor.getId());
            rowUpdated = ps.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}
