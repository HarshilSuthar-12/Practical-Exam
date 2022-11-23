
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class calculate extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int n1 = Integer.parseInt(request.getParameter("sub1"));
            int n2 = Integer.parseInt(request.getParameter("sub2"));
            int n3 = Integer.parseInt(request.getParameter("sub3"));
            int n4 = Integer.parseInt(request.getParameter("sub4"));
            int n5 = Integer.parseInt(request.getParameter("sub5"));
            int total = (n1+n2+n3+n4+n5);
            double perc = (total/5.0);
            char grade;
            if(perc >= 85)
                grade = 'A';
            else if (perc <=85 && perc > 75)
                grade = 'B';
            else if (perc <=75 && perc > 60)
                grade = 'C';
            else if(perc <=60 && perc > 50)
                grade = 'D';
            else 
                grade = 'F';
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Result Page</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<center><h1>Your Result:</h1><center>");
            out.println("<b>Percentage:</b> "+perc);out.print("<br>");
            out.println("<b>Grade:</b> "+grade);
            out.println("</body>");
            out.println("</html>");
            RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
            rd.include(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
