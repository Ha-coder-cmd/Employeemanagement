import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Personalinfo")

public class Personalinfo  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int k=Integer.parseInt(req.getParameter("search the id"));
		System.out.println(k);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driverloaded");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagement", "root", "root");
			System.out.println("connection success");
			
			PreparedStatement pstm=con.prepareStatement("select * from employee where Eid=?");
			pstm.setInt(1, k);
				
			ResultSet rs=pstm.executeQuery();
			HttpSession session=req.getSession();
			session.setAttribute("rs2", rs);
			
			
		/*	while(rs.next()) {
				
				
				 name=rs.getString("Ename");
				
				
			}*/
			
		
			resp.sendRedirect("showemployee.jsp");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
