/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package productDAO;

import dao.DBConnection;
import model.Product;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 *
 * @author LAPTOP ASUS
 */
public class ProductDAO implements IProductDAO {

    DBConnection dbconnection = new DBConnection();
    Connection connection = dbconnection.getConnection();

    @Override
    public void insert(Product p) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([name]\n"
                + "           ,[price]\n"
                + "           ,[description]\n"
                + "           ,[stock]\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getName());
            st.setDouble(2, p.getPrice());
            st.setString(3, p.getDescription());
            st.setInt(4, p.getStock());
        } catch (SQLException e) {
            
        }
    }

    @Override
    public List<Product> showListProducts() {
        
    }

    @Override
    public Product selectProductById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean updateProduct(Product p) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean deleteProduct(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
