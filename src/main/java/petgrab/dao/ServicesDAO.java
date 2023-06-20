/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package petgrab.dao;

import com.model.Services;
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
public class ServicesDAO {
    private final String jdbcURL = "jdbc:mysql://localhost:3306/petgrabsystem";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "";

    private static final String INSERT_SERVICES_SQL = "INSERT INTO service(shopid,name,description,price) values(?,?,?,?);";
    private static final String SELECT_SERVICES_SQL_BY_ID = "SELECT * FROM services where id=?;";
    private static final String SELECT_ALL_SERVICES_SQL_BY_VENDORID = "SELECT * FROM services where shopId=?;";    
    private static final String SELECT_ALL_SERVICES_SQL = "SELECT * FROM services;";
    private static final String DELETE_SERVICES_SQL = "delete from services where id=?;";
    private static final String UPDATE_SERVICES_SQL = "update services set shopid=?,name=?,description=? price=? where serviceid=?;";
    
    public ServicesDAO() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertServices(Services service) throws SQLException {
        System.out.println(INSERT_SERVICES_SQL);

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(INSERT_SERVICES_SQL)) {
            ps.setInt(1, service.getShopid());
            ps.setString(2, service.getName());
            ps.setString(3, service.getDescription());
            ps.setDouble(4, service.getPrice());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Services selectService(int id) {
        Services service = null;

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_SERVICES_SQL_BY_ID)) {
            ps.setInt(1, id);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int vendorId = rs.getInt("vendorId");
                String name = rs.getString("name");
                String description = rs.getString("description");
                double price = rs.getDouble("price");
               
                service = new Services(vendorId,name,description,price);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return service;
    }

    
    public List<Services> selectAllServicesByVendorID(int vendorId) {
        List<Services> services = new ArrayList<>();

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_ALL_SERVICES_SQL_BY_VENDORID);) {
            ps.setInt(1, vendorId);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                double price = rs.getDouble("price");
                services.add(new Services(id,vendorId,name,description,price));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return services;
    }

    public List<Services> selectAllService() {
        List<Services> services = new ArrayList<>();

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_ALL_SERVICES_SQL);) {
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                int vendorId = rs.getInt("vendorId");
                 String name = rs.getString("name");
                String description = rs.getString("description");
                double price = rs.getDouble("price");
                services.add(new Services(id,vendorId,name,description,price));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return services;
    }

    public boolean deleteServices(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(DELETE_SERVICES_SQL)) {
            ps.setInt(1, id);
            rowDeleted = ps.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateService(Services service) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(UPDATE_SERVICES_SQL)) {
            ps.setInt(1, service.getShopid());
            ps.setString(2, service.getName());
            ps.setString(3, service.getDescription());
            ps.setDouble(4, service.getPrice());
            ps.setInt(5, service.getServiceid());
            rowUpdated = ps.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + ((SQLException) e).getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}
