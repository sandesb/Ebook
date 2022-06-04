/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package loginDB;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author home
 */
public class update extends HttpServlet {

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
        String tag = request.getParameter("tag");
        System.out.println(tag + " the is :  ");
        String usernamee = request.getParameter("bnamee");
        String authorr = request.getParameter("remaill");
        int pricee = Integer.parseInt( request.getParameter("pricee") ) ;
        String categg = request.getParameter("btypee");
        String descc = request.getParameter("descc");
        String bimgg = request.getParameter("bimgg");
        
        String btn = request.getParameter("btn");
         //  System.out.println(""+usernamee+authorr+pricee+categg+descc+bimgg+tag);
        System.out.println(btn);
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/ebook-app","root","");  
            //here sonoo is database name, root is username and password  
            Statement stmt=con.createStatement(); 
            System.out.println(tag);
          stmt.executeUpdate("UPDATE book_details SET bookName='"+usernamee+"',author ='"+authorr+"',price="+pricee+",categ ='"+categg+"',photo='"+bimgg+"',description='"+descc+"' where Tag="+tag); 
           
          response.sendRedirect("http://localhost:8081/Ebook1/allbooks.jsp");
        }catch(Exception e){
            System.out.println(e); 
        }  
    } 
}
        
        
   