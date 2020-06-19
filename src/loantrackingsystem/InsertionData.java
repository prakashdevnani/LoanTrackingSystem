package loantrackingsystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;

import java.sql.PreparedStatement;

public class InsertionData extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PreparedStatement stat=null;
		
		Connection conn=new ConnectionCreator().connectInit();
		try {
		stat=conn.prepareStatement("insert into table_user (name,email,password) values (?,?,?)");

		stat.setString(1,req.getParameter("username"));
		stat.setString(2,req.getParameter("email"));
		stat.setString(3,req.getParameter("password_1"));
		stat.executeUpdate();
		PrintWriter out=resp.getWriter();
		out.println("Data got inserted");
		conn.close();
		}
		catch(Exception ex) {
			System.out.println("Error in SQL statement in insertion of data");
		}
	}
}
