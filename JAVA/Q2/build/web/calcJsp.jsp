<%-- 
    Document   : calcJsp
    Created on : 17 Nov, 2022, 6:11:14 PM
    Author     : MOHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Squre of your Number</h1>
        <%
            Integer uno = Integer.parseInt(request.getParameter("u_num"));
            out.println("squre is: "+uno*uno);
        %>
    </body>
</html>
