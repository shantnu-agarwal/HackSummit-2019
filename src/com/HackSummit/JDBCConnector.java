package com.HackSummit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnector {
    private static JDBCConnector instance = new JDBCConnector();
    public static final String URL = "jdbc:mysql://127.0.0.1:3306/HackSummit?useSSL=false";
    public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
    public static final String USER = "root";
    public static final String PASSWORD = "welcome";
    private JDBCConnector() {
        try {
            Class.forName(DRIVER_CLASS);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    private Connection createConnection() {

        Connection connection = null;
        try {
            System.out.println("Creating conn at JDBCConnector.java");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException e) {
            System.out.println("ERROR: Unable to Connect to Database.");
            e.printStackTrace();
        }
        return connection;
    }

    public static Connection getConnection() {
        return instance.createConnection();
    }
}