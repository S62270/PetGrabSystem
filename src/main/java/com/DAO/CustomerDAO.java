/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

import com.model.Customer;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerDAO {

    Connection connection = null;
    private String jdbcURL = "jdbc:mysql://localhost/petgrabsystem";
    private String jdbcUsername = "root";
    private String jdbcPassword = "admin";
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer(username,password,name,email,address,phonenum) VALUES (?,?,?,?,?,?);";
    private static final String SELECT_CUSTOMER_BY_ID = "SELECT custid,username,password,name,email,address,phonenum FROM customer WHERE custid=?";
    private static final String SELECT_ALL_CUSTOMER = "SELECT * FROM customer";
    private static final String DELETE_CUSTOMER_SQL = "DELETE FROM customer WHERE custid=?";
    private static final String UPDATE_CUSTOMER_SQL = "UPDATE customer SET username=?,password=?,name=?,email=?,address=?,phonenum=? WHERE custid=?";

    public CustomerDAO() {
    }

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

    public void insertCustomer(Customer cust) throws SQLException {
        System.out.println(INSERT_CUSTOMER_SQL);

        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL);

            preparedStatement.setString(1, cust.getUsername());
            preparedStatement.setString(2, cust.getPassword());
            preparedStatement.setString(3, cust.getName());
            preparedStatement.setString(4, cust.getEmail());
            preparedStatement.setString(5, cust.getAddress());
            preparedStatement.setString(6, cust.getPhonenum());            
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Customer selectCustomer(int id) {
        Customer cust = null;

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_CUSTOMER_BY_ID)) {
            ps.setInt(1, id);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String username = rs.getString("name");
                String password = rs.getString("password");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String phonenum = rs.getString("phonenum");                
                cust = new Customer(id, username, password, name, email, address, phonenum);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cust;
    }

    public boolean updateCustomer(Customer cust) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER_SQL)) {
            preparedStatement.setString(1, cust.getUsername());
            preparedStatement.setString(2, cust.getPassword());
            preparedStatement.setString(3, cust.getName());
            preparedStatement.setString(4, cust.getEmail());
            preparedStatement.setString(5, cust.getAddress());
            preparedStatement.setString(6, cust.getPhonenum());
            preparedStatement.setInt(7, cust.getCustid());
            System.out.println(preparedStatement);
            rowUpdated = preparedStatement.executeUpdate()>0;
        }
        return rowUpdated;
    }
}
