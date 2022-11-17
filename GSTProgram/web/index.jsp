
<html>
    <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <form method="post" action="">
            Select By Your Choice:
            <select name="dd">
                <option value="" disabled="" selected>--Select One-</option>
                <option value="Food">Food</option>
                <option value="Apparel">Apparel</option>
                <option value="Footwear">Footwear</option>
                <option value="Dairy Product">Dairy Product</option>
                <option value="Packed Dry Fruits">Packed Dry Fruits</option>
            </select>
            <br>
            Enter Price: <input type="text" name="price"><br>
            <input type="submit" value="Submit">
            </form>
        </div>
        
            <%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
            <%@ page import="javax.servlet.http.*"%>
            <%
                    System.out.println("HTTP method:" + request.getMethod());

                    if("POST".equals(request.getMethod())) {
                        String a = request.getParameter("dd");
                        int b = Integer.parseInt(request.getParameter("price"));
                        double gst;
                        double price;
                        if(a.equals("Food"))
                        {
                            gst = 5;
                            price = (b+((b*5)/100));
                        }
                        else if(a.equals("Apparel") && b<1000)
                        {
                            gst = 5;
                            price = (b+((b*5)/100));
                        }
                        else if(a.equals("Footwear") && b<500)
                        {
                            gst = 5;
                            price = (b+((b*5)/100));
                        }
                        else if(a.equals("Dairy Product"))
                        {
                            gst = 12;
                            price = (b+((b*12)/100));
                        }
                        else if(a.equals("Packed Dry Fruits"))
                        {
                            gst = 12;
                            price = (b+((b*12)/100));
                        }
                        else if(a.equals("Apparel") && b >= 1000)
                        {
                            gst = 12;
                            price = (b+((b*12)/100));
                        }
                        else if(a.equals("Footwear") && b >= 500)
                        {
                            gst = 18;
                            price = (b+((b*18)/100));
                        }
                        else{
                            gst = 0;
                            price = 0;
                        }
                        %>
                        <h1><% out.println("Amount: "+b+"<br>GST: "+gst+"%<br>Total Amount:"+price); }%></h1>
    </body>
</html>