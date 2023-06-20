/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import petgrab.dao.DriverDAO;
import com.model.Driver;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MUHAMMAD FAUZUL AZIM BIN IMRAN HAYAT
 */
@WebServlet("/DriverController/")
public class DriverController extends HttpServlet {

    private DriverDAO dao;

    @Override
    public void init() {
        dao = new DriverDAO();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        System.out.println(request.getServletPath());
        try {
            switch (action) {
                case "insert":
                    insertDriver(request, response);
                    break;
                case "update":
                    updateDriver(request, response);
                    break;
                case "delete":
                    deleteDriver(request, response);
                    break;
                case "edit":
                    editForm(request, response);
                    break;
                case "login":
                    login(request, response); // Handle login action
                    break;
                default:
                    viewList(request, response);
                    break;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DriverController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    public void insertDriver(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean success = false;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phonenum = request.getParameter("phonenum");
        String noplate = request.getParameter("noplate");
        String status = "Active";

        Driver driver = new Driver(username, password, name, email, address, phonenum, noplate, status);
        success = dao.AddDriver(driver);
        if (success = true) {
            System.out.println("Driver Insertion Successful");
            RequestDispatcher rd = request.getRequestDispatcher("/Authentication.jsp");
            rd.forward(request, response);
        } else {
            System.out.println("Driver Insertion is Denied");
        }
    }

    public void updateDriver(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean success = false;

        int driverid = Integer.parseInt(request.getParameter("driverid"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phonenum = request.getParameter("phonenum");
        String noplate = request.getParameter("noplate");
        String status = request.getParameter("status");

        Driver driver = new Driver(driverid, username, password, name, email, address, phonenum, noplate, status);
        success = dao.UpdateDriver(driver);

        if (success = true) {
            System.out.println("Driver Update Successful");
            HttpSession session = request.getSession();
            session.setAttribute("account",driver );
            response.sendRedirect("DriverAccount.jsp");
        } else {
            System.out.println("Driver Update is Denied");
        }
    }

    public void deleteDriver(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        boolean success = false;
        int driverid = Integer.parseInt(request.getParameter("driverid"));
        success = dao.DeleteDriver(driverid);

        if (success = true) {
            System.out.println("Delete Successful");
            response.sendRedirect("homepage.jsp");
        }
        System.out.println("Delete Unsuccessful");
    }

    public void editForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        int driverid = Integer.parseInt(request.getParameter("driverid"));
        Driver existingDriver = dao.SelectDriverById(driverid);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/DriverAccount.jsp");
        request.setAttribute("driver", existingDriver);
        dispatcher.forward(request, response);
    }

    public void viewList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        List<Driver> driver = dao.SelectAllDriver();
        RequestDispatcher rd = request.getRequestDispatcher("driverList.jsp");
        request.setAttribute("driverlist", driver);
        rd.forward(request, response);
    }

    public void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Call the DAO method to verify the login credentials
        boolean loginSuccessful = dao.verifyLogin(username, password);
        
        Driver driver = dao.SelectDriverByUsername(username);
        
        if (loginSuccessful == true) {
            // Redirect to a success page
            HttpSession session = request.getSession();
            session.setAttribute("account",driver );
            RequestDispatcher rd = request.getRequestDispatcher("/DriverMainpage.jsp");
            rd.forward(request, response);
        } else {
            // Redirect to a failure page
            response.sendRedirect("Authentication.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
