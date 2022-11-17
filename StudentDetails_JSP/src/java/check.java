import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

@WebFilter(filterName = "FirstFilter", servletNames = {"calcul"})
public class check implements Filter {
    
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
            
            HttpServletRequest req = (HttpServletRequest) request;
            int n1 = Integer.parseInt(request.getParameter("sub1"));
            int n2 = Integer.parseInt(request.getParameter("sub2"));
            int n3 = Integer.parseInt(request.getParameter("sub3"));
            int n4 = Integer.parseInt(request.getParameter("sub4"));
            int n5 = Integer.parseInt(request.getParameter("sub5"));
            
            if(n1>=1 || n2>=1 || n3>=1 || n4>=1 || n5>=1)
            {
                chain.doFilter(request, response);
            }
            else
                throw new ServletException ("Number can't be Zero");
        }
    
    public void destroy() {        
    }
    
    public void init(FilterConfig filterConfig) {        
        
    } 
}
