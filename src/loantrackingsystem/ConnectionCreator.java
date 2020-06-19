package loantrackingsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.mysql.jdbc.Driver;

public class ConnectionCreator {
	public Connection connectInit() {
		Connection conn=null;
		try {
		Driver d=new Driver();
		DriverManager.registerDriver(d);
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user?" + "autoReconnect=true&useSSL=false","root","root");
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return conn;
	}
}
