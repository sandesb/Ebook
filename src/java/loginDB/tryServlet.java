package loginDB;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author home
 */
@WebServlet(name = "tryServlet", urlPatterns = {"/tryServlet"})
public class tryServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
  
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
//        important code from here, rest is same
    String uuname = request.getParameter("username");
   String ppword = request.getParameter("password");
// mathi String pachadi ko name to store value from dB
// getParamter pachadi ko value from Form ko name (jsp page ma lekheko chai)

        try {
                        System.out.println("select * from login where username ='" + uuname + "' and password='" + ppword + "'");
//            mero database table ko name login ho, so 'from login' bhayo, ani column chai username ra password//
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/ebook-app", "root", "");
//here ebook-app is database name, root is username and password  
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from login where username ='" + uuname + "' and password='" + ppword + "'");
            if(rs.next()) {
                response.sendRedirect("http://localhost:8081/Ebook1/try.jsp?id='"+uuname+"'");
//               yo response le chai login gareko username pani print garcha ani jun page ma pathaune ho tyo ni rakhne
            }else{
               ;
                response.sendRedirect("http://localhost:8081/Ebook1/register1.jsp");
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
    
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */


