package com.controller;

import petgrab.dao.PetShopDAO;
import com.model.PetShop;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;

public class VendorServlet extends HttpServlet {

    private PetShopDAO petShopDAO;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public void init() {
        petShopDAO = new PetShopDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            switch (action) {
                case "new":
                    registerForm(request, response);
                    break;
                case "insert":
                    insertVendor(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "update":
                    updateVendor(request, response);
                    break;
                case "delete":
                    deleteVendor(request, response);
                    break;
                case "list":
                    showAll(request, response);
                    break;
                default:
                    showHomePage(request, response);
                    break;

            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void registerForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("vendorForm.jsp");
        dispatcher.forward(request, response);
    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("customerLogin.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        PetShop vendor = petShopDAO.selectPetshop(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("vendorForm.jsp");
        request.setAttribute("vendor", vendor);
        dispatcher.forward(request, response);
    }

    private void insertVendor(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String shopname = request.getParameter("shopname");
        String shopaddress = request.getParameter("shopaddress");
        String phonenum = request.getParameter("phonenum");
        byte imagepetshop = Byte.parseByte(request.getParameter("shopimage"));
        PetShop petShop = new PetShop(username, password, shopname, shopaddress, phonenum, imagepetshop);
        petShopDAO.insert(petShop);
        response.sendRedirect("list");
    }

    private void updateVendor(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String shopname = request.getParameter("shopname");
        String shopaddress = request.getParameter("shopaddress");
        String phonenum = request.getParameter("phonenum");
        byte imagepetshop = Byte.parseByte(request.getParameter("shopimage"));

        PetShop petshop = new PetShop(username, password, shopname, shopaddress, phonenum, imagepetshop);
        petShopDAO.update(petshop);
        response.sendRedirect("list");
    }

    private void deleteVendor(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("ID:" + id);
        petShopDAO.delete(id);
        response.sendRedirect("list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void showAll(HttpServletRequest request, HttpServletResponse response) {
    }

}
