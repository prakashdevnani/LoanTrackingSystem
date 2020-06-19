 package loantrackingsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import sun.font.CreatedFontTracker;

public class LoginCheckData extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn=new ConnectionCreator().connectInit();
		if(req.getParameter("email").equals("abc@gm.cm") && req.getParameter("pass").equals("12345")) {
			HttpSession session=req.getSession();
			session.setAttribute("email", req.getParameter("email"));
			session.setAttribute("password", req.getParameter("pass"));
			RequestDispatcher rd=req.getRequestDispatcher("adminPage.jsp");
			rd.forward(req, resp);
		}
		
		try {
		PreparedStatement stat=conn.prepareStatement("select * from table_user where email=? and password=?");
		
		stat.setString(1, req.getParameter("email"));
		stat.setString(2, req.getParameter("pass"));
		
		ResultSet rs=stat.executeQuery();
		HttpSession session=req.getSession();
		while(rs.next()) {
			session.setAttribute("name", rs.getString(2));
			session.setAttribute("password", rs.getString(3));
			session.setAttribute("loanAmount", rs.getFloat(4));
			session.setAttribute("loanDuration", rs.getFloat(5));
			session.setAttribute("email", rs.getString(6));
			session.setAttribute("application", rs.getString(7));
			break;
		}
		conn.close();
		if(session.getAttribute("name")==null) {
			PrintWriter out=resp.getWriter();
			out.println("Sorry Data not valid");
			req.getSession().invalidate();
		}
		else {
			RequestDispatcher rd=req.getRequestDispatcher("User.jsp");
			rd.forward(req, resp);
		}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
	}

}
