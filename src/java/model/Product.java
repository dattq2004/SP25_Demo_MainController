/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Timestamp;

/**
 *
 * @author LAPTOP ASUS
 */
public class Product {
    private int id;
    private String name;
    private double price;
    private String description;
    private int stock;
    private Timestamp import_date;

    public Product() {
    }

    public Product(int id, String name, double price, String description, int stock, Timestamp import_date) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.stock = stock;
        this.import_date = import_date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public Timestamp getImport_date() {
        return import_date;
    }

    public void setImport_date(Timestamp import_date) {
        this.import_date = import_date;
    }
    
    
}
