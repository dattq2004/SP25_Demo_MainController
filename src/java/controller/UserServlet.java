/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.User;
import userDAO.UserDAO;

/**
 *
 * @author LAPTOP ASUS
 */
@WebServlet(name = "UserServlet", urlPatterns = {"/users"})
public class UserServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                response.sendRedirect("addUser.jsp");
                break;
            case "edit":
                goEdit(request, response);
                break;
            case "delete":
                deleteUser(request, response);
            default:
                listUser(request, response);
                break;
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
        String action = request.getParameter("action");
        switch (action) {
            case "add":
                addUser(request, response);
                break;
            case "edit":
                editUser(request, response);
                break;
            default:
                throw new AssertionError();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO dao = new UserDAO();
        List<User> users = dao.selectAllUsers();
        request.setAttribute("users", users);
        request.getRequestDispatcher("listUser.jsp").forward(request, response);
    }

    private void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        String role = request.getParameter("role");
        String statusStr = request.getParameter("status");
        String password = request.getParameter("password");
        try {
            boolean status = Boolean.parseBoolean(statusStr);
            UserDAO dao = new UserDAO();
            User user_new = new User(username, email, country, role, status, password);
            dao.insertUser(user_new);
            listUser(request, response);
        } catch (IOException e) {
        }
    }

    private void goEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idStr = request.getParameter("id");
        int id = Integer.parseInt(idStr);
        UserDAO dao = new UserDAO();
        User user = dao.selectUser(id);
        request.setAttribute("user", user);
        request.getRequestDispatcher("editUser.jsp").forward(request, response);
    }

    private void editUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idStr = request.getParameter("id");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        String role = request.getParameter("role");
        String statusStr = request.getParameter("status");
        String password = request.getParameter("password");
        try {
            boolean status = Boolean.parseBoolean(statusStr);
            UserDAO dao = new UserDAO();
            int id = Integer.parseInt(idStr);
//            User user_new = dao.selectUser(id);
//            user_new.setUsername(username);
//            user_new.setCountry(country);
//            user_new.setEmail(email);
//            user_new.setPassword(password);
//            user_new.setStatus(status);
//            user_new.setRole(role);
//            dao.updateUser(user_new);
            User user_new = new User(id, username, email, country, role, status, password);
            dao.updateUser(user_new);
        } catch (NumberFormatException e) {
        }
        listUser(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        String idStr = request.getParameter("id");
        UserDAO dao = new UserDAO();
        try {
            int id = Integer.parseInt(idStr);
            dao.deleteUser(id);
            listUser(request, response);
        } catch (IOException | NumberFormatException e) {
        }
    }

}
