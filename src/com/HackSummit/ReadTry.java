package com.HackSummit;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ReadTry extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        ResultSet rs = null;
        Connection connection = null;
        Statement statement = null;
        try {
            String query = "SELECT * FROM abc;";
            connection = JDBCConnector.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);

            while(rs.next()) {
                int rec = rs.getInt("id");
                System.out.println("Received: " + rec);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
