
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class result extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String submit = request.getParameter("submit");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/newdemo", "root", "");
            if(submit.equals("Insert"))
            {
                String id = request.getParameter("sid");
                String name = request.getParameter("sname");
                String gender = request.getParameter("sgender");
                String Fskill = request.getParameter("skills_1");
                String Sskill = request.getParameter("skills_2");
                String Tskill = request.getParameter("skills_3");
                
                
                out.println(id);
                out.println(name);
                out.println(gender);
                out.println(Fskill);
                out.println(Tskill);
                
                Statement st = (Statement) con.createStatement();
                st.executeUpdate("insert into student (std_id, std_name, std_gender) values('"+id+"','"+name+"','"+gender+"')");
                if(Fskill != null)
                {
                   st.executeUpdate("insert into skills (std_id, skill) values('"+id+"','"+Fskill+"')"); 
                }
                if(Sskill != null)
                {
                    st.executeUpdate("insert into skills (std_id, skill) values('"+id+"','"+Sskill+"')"); 
                }
                if(Tskill != null)
                {
                    st.executeUpdate("insert into skills (std_id, skill) values('"+id+"','"+Tskill+"')"); 
                }
            }
            else if(submit.equals("Search Result by ID"))
            {
                String id = request.getParameter("search_id");
                Statement st = (Statement) con.createStatement();
                ResultSet rs = st.executeQuery("Select * From Student where std_id = "+id);
                if(!rs.next())
                {
                    out.println("<h1>NO DATA FOUND!!</h1>");
                }
                else{
                    out.println("<table>"
                            + "<tr>"
                            + "<td>Student ID</td>"
                            + "<td>Student Name</td>"
                            + "<td>Gender</td>"
                            + "</tr>");
                        out.println("<tr>"
                                + "<td> " +rs.getInt(1)+" </td>"
                                + "<td> " +rs.getString(2)+" </td>"
                                + "<td> " +rs.getString(3)+" </td>"
                                + "</tr>");
                    out.println("</table>");
                }
                
            }
            else if(submit.equals("Search Result by Names"))
            {
                String nm = request.getParameter("search_name");
                Statement st = (Statement) con.createStatement();
                ResultSet rs = st.executeQuery("Select * From Student where std_name like '"+nm+"%'");
                if(!rs.next())
                {
                    out.println("<h1>NO DATA FOUND!!</h1>");
                }
                else{
                    out.println("<table>"
                            + "<tr>"
                            + "<td>Student ID</td>"
                            + "<td>Student Name</td>"
                            + "<td>Gender</td>"
                            + "</tr>");
                    do{
                        out.println("<tr>"
                                + "<td> " +rs.getInt(1)+" </td>"
                                + "<td> " +rs.getString(2)+" </td>"
                                + "<td> " +rs.getString(3)+" </td>"
                                + "</tr>");
                    } while(rs.next());
                    out.println("</table>");
                }
            }
            else if(submit.equals("Find Results By Gender"))
            {
                String nm = request.getParameter("search_gender");
                Statement st = (Statement) con.createStatement();
                ResultSet rs = st.executeQuery("Select * From Student where std_gender = '"+nm+"'");
                if(!rs.next())
                {
                    out.println("<h1>NO DATA FOUND!!</h1>");
                }
                else{
                    out.println("<table>"
                            + "<tr>"
                            + "<td>Student ID</td>"
                            + "<td>Student Name</td>"
                            + "<td>Gender</td>"
                            + "</tr>");
                    do{
                        out.println("<tr>"
                                + "<td> " +rs.getInt(1)+" </td>"
                                + "<td> " +rs.getString(2)+" </td>"
                                + "<td> " +rs.getString(3)+" </td>"
                                + "</tr>");
                    } while(rs.next());
                    out.println("</table>");
                }
            }
            else if(submit.equals("Find Results By Skill"))
            {
                String nm = request.getParameter("search_skill");
                Statement st = (Statement) con.createStatement();
                ResultSet rs = st.executeQuery("select full.std_id, full.std_name, full.std_gender, skills.skill from student full join skills ON FULL.std_id = skills.std_id where skills.skill = '"+nm+"'");
                if(!rs.next())
                {
                    out.println("<h1>NO DATA FOUND!!</h1>");
                }
                else{
                    out.println("<table>"
                            + "<tr>"
                            + "<td>Student ID</td>"
                            + "<td>Student Name</td>"
                            + "<td>Gender</td>"
                            + "</tr>");
                    do{
                        out.println("<tr>"
                                + "<td> " +rs.getInt(1)+" </td>"
                                + "<td> " +rs.getString(2)+" </td>"
                                + "<td> " +rs.getString(3)+" </td>"
                                + "</tr>");
                    } while(rs.next());
                    out.println("</table>");
                }
            }
            
            out.println("<a href='index.html'>Back to Home Page</a>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(result.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(result.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(result.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(result.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
