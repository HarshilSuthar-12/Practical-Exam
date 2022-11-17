<%-- 
    Document   : upperCase
    Created on : 17 Nov, 2022, 6:01:52 PM
    Author     : MOHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>upperCase</title>
    </head>
    <body>
        <h1>UpperCase</h1>
        <%
            String UCN = request.getParameter("upper_case");
            out.println("Your name in upper Case is "+UCN.toUpperCase());
        %>
    </body>
</html>
