package loantrackingsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ApplyLoanInsertData extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn=new ConnectionCreator().connectInit();
		HttpSession session=req.getSession();
		
		try {
		PreparedStatement stat=conn.prepareStatement("update table_user set loanAmount=?, loanDuration=?,application='waiting' where email=? and password=?");
		
		stat.setFloat(1, Float.parseFloat(req.getParameter("amount")));
		stat.setFloat(2, Float.parseFloat(req.getParameter("time")));
		stat.setString(3,(String)session.getAttribute("email"));
		stat.setString(4,(String)session.getAttribute("password"));
		
		stat.executeUpdate();
		
		PrintWriter out=resp.getWriter();
		out.println("Loan got applied");
		session.removeAttribute("loanAmount");
		session.removeAttribute("loanDuration");
		session.setAttribute("loanAmount", Float.parseFloat(req.getParameter("amount")));
		session.setAttribute("loanDuration", Float.parseFloat(req.getParameter("time")));
		session.setAttribute("application","waiting");
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
}
