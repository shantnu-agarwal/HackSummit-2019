package com.HackSummit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnector {
    private static JDBCConnector instance = new JDBCConnector();
    public static final String URL = "jdbc:mysql://team-astroller.mysql.database.azure.com:3306/ast?useSSL=true&requireSSL=false";
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
            System.out.println("Creating conn at JDBCConnector.java");
            connection = DriverManager.getConnection(URL, "shantnu@team-astroller", "ABCDefgh1234");
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