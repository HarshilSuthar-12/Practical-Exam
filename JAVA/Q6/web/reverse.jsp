<%-- 
    Document   : reverse
    Created on : 17 Nov, 2022, 6:18:39 PM
    Author     : MOHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>reverse text</title>
    </head>
    <body>
        <h1>Text Reversed</h1>
        <%
            String RT = request.getParameter("normal_txt");
            StringBuffer STRB = new StringBuffer(RT);
            STRB.reverse();
            out.println(STRB);
        %>
    </body>
</html>
