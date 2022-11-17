<%-- 
    Document   : index
    Created on : 23 Sep, 2022, 2:07:19 PM
    Author     : Amir Here!
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Calculation</title>
    </head>
    <body>
        <center>
            <form action="" method="post">
                <table>
                    <tr>
                        <td>
                            Enter Your Weight: 
                        </td>
                        <td>
                            <input type="text" name="wht">
                        </td>
                    </tr>
                    <tr>
                        
                    
                        <td>
                            Enter Your Height: 
                        </td>
                        <td>
                            <input type="text" name="ht">
                        </td>
                    </tr>
                    <tr>
                        
                    </tr>
                        <td>
                            <input type="submit" value="Submit">
                        </td>
                    </tr>
                </table>
            </form>
            
            <%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
            <%@ page import="javax.servlet.http.*"%>
            <%
                    System.out.println("HTTP method:" + request.getMethod());

                    if("POST".equals(request.getMethod())) {
                        int a = Integer.parseInt(request.getParameter("wht"));
                        float b = Float.parseFloat(request.getParameter("ht"));
                        double op = (a/(b*b));
                        String status;
                        if(op>=40.0)
                        {
                            status = "Obese";
                        }
                        else if(op<=39.9 && op>=25.0)
                        {
                            status = "Overweight";
                        }
                        else if(op<=24.9 && op>=18.5)
                        {
                            status = "Normal";
                        }
                        else if(op<=18.4)
                        {
                            status = "Underweight";
                        }
                        else
                            status="";
                        %>
                        <h1><% out.println(status+ " "+op); }%></h1>
        </center>
    </body>
</html>
