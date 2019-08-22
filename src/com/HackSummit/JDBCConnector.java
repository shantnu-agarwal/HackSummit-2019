package com.HackSummit;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnector {
    private static JDBCConnector instance = new JDBCConnector();
    public static final String URL = "jdbc:mysql://127.0.0.1:3306/hacksummit";
    public static final String USER = "root";
    public static final String PASSWORD = "welcome";
    public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";

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
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException e) {
            System.out.println("ERROR: Unable to Connect to Database.");
        }
        return connection;
    }

    public static Connection getConnection() {
        return instance.createConnection();
    }
}