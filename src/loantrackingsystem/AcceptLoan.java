package loantrackingsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.PreparedStatement;

public class AcceptLoan extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	int sno=Integer.parseInt(req.getParameter("input"));
	Connection conn=new ConnectionCreator().connectInit();
	try {
	PreparedStatement stat=conn.prepareStatement("update table_user set application='accepted' where sno=?");
	stat.setInt(1, sno);
	stat.executeUpdate();
	PrintWriter out=resp.getWriter();
	out.println("Application got accepted for sno:"+sno);
	
	conn.close();
	}
	catch(Exception ex) {
		ex.printStackTrace();
	}
	
	
}
}
