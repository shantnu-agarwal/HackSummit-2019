package com.HackSummit;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class ReadTry extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        ResultSet rs = null;
        Connection connection = null;
        Statement statement = null;
        try {
            System.out.println("Attemping to run ReadTry");
            String query = "select * from users;";
            connection = JDBCConnector.getConnection();
            System.out.println("Done.");

            statement = connection.createStatement();
            rs = statement.executeQuery(query);

            while(rs.next()) {
                int userid = rs.getInt("user_id");
                int age = rs.getInt("age");
                System.out.println("Received: User ID : " + userid + " | Age : " + age);
            }
        } catch (Exception e) {
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