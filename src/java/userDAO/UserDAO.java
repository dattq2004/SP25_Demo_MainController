/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package userDAO;

import dao.DBConnection;
import model.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LAPTOP ASUS
 */
public class UserDAO implements IUserDAO {

    DBConnection dbconnection = new DBConnection();
    Connection connection = dbconnection.getConnection();

    @Override
    public void insertUser(User user) {
        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ([username]\n"
                + "           ,[email]\n"
                + "           ,[country]\n"
                + "           ,[role]\n"
                + "           ,[status]\n"
                + "           ,[password])\n"
                + "     VALUES\n"
                + "           (?, ?, ?, ?, ? ,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user.getUsername());
            st.setString(2, user.getEmail());
            st.setString(3, user.getCountry());
            st.setString(4, user.getRole());
            st.setBoolean(5, user.isStatus());
            st.setString(6, user.getPassword());
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<User> selectAllUsers() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM Users";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getString("country"),
                        rs.getString("role"),
                        rs.getBoolean("status"),
                        rs.getString("password"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public User selectUser(int id) {
        String sql = "SELECT * FROM Users WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User user = new User(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getString("country"),
                        rs.getString("role"),
                        rs.getBoolean("status"),
                        rs.getString("password"));
                return user;
            } else {
                System.out.println("User not found!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean deleteUser(int id) {
        String sql = "DELETE FROM [dbo].[Users]\n"
                + "      WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateUser(User user) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET [username] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[country] = ?\n"
                + "      ,[role] = ?\n"
                + "      ,[status] = ?\n"
                + "      ,[password] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user.getUsername());
            st.setString(2, user.getEmail());
            st.setString(3, user.getCountry());
            st.setString(4, user.getRole());
            st.setBoolean(5, user.isStatus());
            st.setString(6, user.getPassword());
            st.setInt(7, user.getId());
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        List<User> users = dao.selectAllUsers();
        User user = dao.selectUser(1);
        System.out.println(user);
    }

}
