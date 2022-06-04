/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package registerDB;
import java.sql.*;

public class regDao {
    private String dburl = "jdbc:mysql://localhost:3306/ebook-app";
     private String dbname = "root";
      private String dbpassword = "";
       private String dbDriver = "com.mysql.cj.jdbc.Driver";
       
       public void loadDriver(String dbDriver) {
           try {
               Class.forName(dbDriver);
           } catch (ClassNotFoundException ex)
           {
               ex.printStackTrace();
           }
       }
       
       public Connection getConnection() {
           Connection con = null;
           try {
               con = DriverManager.getConnection(dburl,dbname,dbpassword);
           } catch (SQLException e) {
               
           }
           return con;
       }
       public Boolean checkRegister(regmodel model) {
           loadDriver(dbDriver);
           Connection con = getConnection();
           String sql = "insert into reg(name,email,phno,password) values(?,?,?,?)";
           try
           {
               PreparedStatement ps = con.prepareStatement(sql);
               
               ps.setString(1, model.getName());
               ps.setString(2, model.getEmail());
               ps.setString(3, model.getPhno());
               ps.setString(4, model.getPassword());
                
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    return true;
                }
                rs.close();
                ps.close();
                return false;
           }catch (SQLException e) {
               e.printStackTrace();
           }
       return false;
       }
       
   
       
}
