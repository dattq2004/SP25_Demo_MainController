/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package productDAO;

import java.util.List;
import model.Product;

/**
 *
 * @author LAPTOP ASUS
 */
public interface IProductDAO {
    public void insert(Product p);
    public List<Product> showListProducts();
    public Product selectProductById(int id);
    public boolean deleteProduct(int id);
    public boolean updateProduct(Product p);
}
