package shop;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class InsertDB {
	public void insert(String name, String phone, String address, String grade, String ad){
        java.sql.Connection connection = null;
        java.sql.Statement st = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop" , "root", "");
            st = connection.createStatement();
 
            String sql;
            sql = "insert into member_table01(custname,phone,address,joindate,grade,city) values('"+name+"','"+phone+"','"+address+"',sysdate(),'"+grade+"','"+ad+"')";
            st.executeUpdate(sql);
            st.close();
            connection.close();
        } catch (SQLException se1) {
            se1.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (st != null)
                    st.close();
            } catch (SQLException se2) {
            }
            try {
                if (connection != null)
                    connection.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        } 
	}
}
