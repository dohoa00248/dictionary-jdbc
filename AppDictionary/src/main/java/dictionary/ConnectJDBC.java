package dictionary;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectJDBC {
	
	public static Connection getConectJDBC()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Where is your MySQL JDBC Driver?");
	        e.printStackTrace();
		}
		System.out.println("MySQL JDBC Driver Registered!");
	    Connection conn = null;
		try {
	        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/datadictionary","root","");

	    } catch (SQLException e) {
	        System.out.println("Connection Failed! Check output console");
	        e.printStackTrace();
	        
	    }
		return conn;
	}
	
	
}
