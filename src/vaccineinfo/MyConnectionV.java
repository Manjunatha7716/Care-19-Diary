/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vaccineinfo;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author DELL
 */
public class MyConnectionV 
{
     public static Connection getConnection()
    {
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost/vaccine tracker", "root" , "");
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
        }
        
        //new uLogin().setVisible(true);
        return con;
    }
    
}
