package shop;

import java.sql.DriverManager;
import java.sql.SQLException;

public class UpdateDB {
	public void update(String custno, String name, String phone, String address, String grade, String ad){
        java.sql.Connection connection = null;
        java.sql.Statement st = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop" , "root", "");
            st = connection.createStatement();
 
            String sql;
            sql = "update member_table01 set custname='"+name+"',phone='"+phone+"',address='"+address+"',grade='"+grade+"',city='"+ad+"' where custno="+custno;
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
