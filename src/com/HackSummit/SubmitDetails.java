package com.HackSummit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class SubmitDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Received POST request at com.HackSummit.SubmitDetails.java");

        String UIDAI = (String) request.getParameter("InputUIDAI");
        String inputPhoneNumber = (String) request.getParameter("InputPhoneNumber");
        String InputName = (String) request.getParameter("InputName");
        String InputEmail = (String) request.getParameter("InputEmail");
        String InputDOB = (String) request.getParameter("InputDOB");
        String InputAddress = (String) request.getParameter("InputAddress");
        String InputType = (String) request.getParameter("InputType");
        String InputSpaceAddress = (String) request.getParameter("InputSpaceAddress");
        String InputRooms = (String) request.getParameter("InputRooms");
        String InputTSA = (String) request.getParameter("InputTSA");
        String InputPrice = (String) request.getParameter("InputPrice");
        String InputArea = (String) request.getParameter("InputArea"); //location waaala area, AKA Locality
        String InputFloors = (String) request.getParameter("InputFloors");
        String InputDesc= (String) request.getParameter("InputDesc");
        String timestamp = new Timestamp(System.currentTimeMillis()).toString();

        System.out.print("Received data as : " + UIDAI + " " + inputPhoneNumber );
        System.out.println(InputName + " " + InputEmail + " " + InputDOB + " " + InputAddress + " " + InputType + " " + InputSpaceAddress + " " + InputRooms + " " + InputTSA + " " + InputPrice + " " + timestamp);
        Connection connection = null;
        Statement statement = null;
        try {
            String query = "insert into user_details(uidai,fullname,dob,phno,email,current_address,create_date) values ('" + UIDAI+ "','" + InputName + "','"+ InputDOB + "','"+ inputPhoneNumber+ "','"+ InputEmail+ "','"+
                    InputAddress+"','" + timestamp+ "');";
            System.out.println(query);
            connection = JDBCConnector.getConnection();
            statement = connection.createStatement();
            statement.executeUpdate(query);
            query = "insert into mytable(Id,Created_on,Operation,Type,Area,Country,RENT_INR,TSA_in_m2,Floor,Rooms,description,City,image_thumbnail,owner_id) values ('"+randomAlphaNumeric(40)+"','"+ "2019-08-31"+ "','rent','"+
                   0 +"','" + InputArea + "','India','" + InputPrice +"','" + InputTSA+ "','"+ InputFloors+ "','" + InputRooms + "','"+ InputDesc + "','Mumbai','"+ "NULL" + "','"+ UIDAI+ "');";
            System.out.println(query);
            statement.executeUpdate(query);


            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.sendRedirect("http://localhost:8080/HackSummit_war_exploded/listing/complete.jsp");
            connection.close();
            System.out.println("Written");
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.sendRedirect("http://localhost:8080/HackSummit_war_exploded/listing/form.jsp?error=true");

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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private static final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

    public static String randomAlphaNumeric(int count) {

        StringBuilder builder = new StringBuilder();

        while (count-- != 0) {

            int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());

            builder.append(ALPHA_NUMERIC_STRING.charAt(character));

        }

        return builder.toString();

    }
}
