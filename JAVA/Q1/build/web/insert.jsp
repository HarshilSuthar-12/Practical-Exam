<%-- 
    Document   : insert.jsp
    Created on : Nov 11, 2022, 12:09:32 AM
    Author     : 7student135
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Page</title>
    </head>
    <body>
        <form action="insertServlet" method="post">
            <input type="text" name="V_name" placeholder="Vehical Name">
            <input type="text" name="fuelCap" placeholder="Vehical Fuel Capacity">
            <input type="text" name="V_milage" placeholder="Vehical Milage">
            <input type="submit" value="Save">
        </form>
    </body>
</html>
