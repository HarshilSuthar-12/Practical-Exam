<%-- 
    Document   : index.jsp
    Created on : 23 Sep, 2022, 1:33:15 PM
    Author     : Sys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Student Details.</title>
    </head>
    <body>
    <center>
        <form method="post" action="calculate">
            <table>
                <tr>
                    <td>Enter Subject 1 Marks</td>
                    <td><input type="text" name="sub1"</td>
                </tr>
                <tr>
                    <td>Enter Subject 2 Marks</td>
                    <td><input type="text" name="sub2"</td>
                </tr>
                <tr>
                    <td>Enter Subject 3 Marks</td>
                    <td><input type="text" name="sub3"</td>
                </tr>
                <tr>
                    <td>Enter Subject 4 Marks</td>
                    <td><input type="text" name="sub4"</td>
                </tr>
                <tr>
                    <td>Enter Subject 5 Marks</td>
                    <td><input type="text" name="sub5"</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Submit">
                    </td>
                </tr>
            </table>
        </form>
    </center>
    </body>
</html>
