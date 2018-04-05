package db;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.omg.CORBA.PRIVATE_MEMBER;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
public class MyDb {
	public MyDb() {
	}
	public boolean connectDb() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Statement st=null;
			java.sql.Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employees" , "root", "");
			st = connection.createStatement();
            return true;
        }catch (Exception ex) {
            return false;
        }
	}
	
	public boolean executeQuery(String last_name,String first_name,String position, String salary, String uo){
		StringBuilder result= getQuery(last_name, first_name, position, salary, uo);
		System.out.println(result.toString());
		return true;
	}
	public StringBuilder getQuery(String last_name,String first_name,String position, String salary, String uo){
		StringBuilder str=new StringBuilder("select * from salaries,titles,employees where employees.emp_no=titles.emp_no and employees.emp_no=salaries.emp_no ");
		if(!last_name.equals("")){
			str.append("and employees.last_name='");
			str.append(last_name);
			str.append("'");
		}
		if(!first_name.equals("")){
			str.append("and employees.first_name='");
			str.append(first_name);
			str.append("'");
		}
		if(!last_name.equals("")){
			str.append("and titles.title='");
			str.append(position);
			str.append("'");
		}
		if(!(salary.equals("") && uo.equals(""))){
			str.append("and salaries.salary");
			str.append(uo);
			str.append(salary);
		}
		return str;
	}
}
