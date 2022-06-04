/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package loginDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class update1 extends HttpServlet {

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
      
         String tag = request.getParameter("tag");
        String usernamee = request.getParameter("bnamee");
        String authorr = request.getParameter("remaill");
         int pricee = Integer.parseInt( request.getParameter("pricee") ) ;
        String categg = request.getParameter("btypee");
        String descc = request.getParameter("descc");
        String bimgg = request.getParameter("bimgg");
         String upload = request.getParameter("upload");
        //sset it in the model
        
        System.out.println(tag);
        String sql = "update book_details set bookName= ?,author= ?,price=?,categ=?,photo=?, description=?, upload=?  where Tag="+tag;
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/ebook-app","root","");  
            //here sonoo is database name, root is username and password  
            Statement stmt=con.createStatement();  
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usernamee);
            ps.setString(2, authorr);
            ps.setInt(3, pricee);
            ps.setString(4, categg);
            ps.setString(5, bimgg);
             ps.setString(6, descc);
             ps.setString(7, upload);
             
            System.out.println(ps);
            int i = ps.executeUpdate();
            response.sendRedirect("allbooks.jsp");
            
              
            con.close();  
        }catch(Exception e){ 
            System.out.println(e);
        } 
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
