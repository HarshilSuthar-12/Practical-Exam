

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Fuel</th>
                <th>Milage</th>
                <th>Distance</th>
            </tr>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/22mca069","root","");
                Statement st = con.createStatement();
                
                ResultSet rs = st.executeQuery("Select * from Vehicals");
               
                while(rs.next())
                {
                 %>
                    <tr>
                        <td><%= rs.getInt(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getInt(3) %></td>
                        <td><%= rs.getInt(4) %></td>
                        <td><%= rs.getInt(3)*rs.getInt(4)   %></td>
                    </tr>
                 <%
                }
            
            %>
        </table>
    </body>
</html>
