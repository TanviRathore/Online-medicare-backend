

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Signin
 */
@WebServlet("/Signin")
public class Signin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out  = response.getWriter();
		response.setContentType("text/html");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medicare", "root", "1607");
			String qr = "select * from user where email=? and pwd=?";
			PreparedStatement ps = con.prepareStatement(qr);
			ps.setString(1, email);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				do
				{
					HttpSession session = request.getSession();
					session.setAttribute("id", email);
					response.sendRedirect("UHome.html");
				}while(rs.next());
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("Signin.html");
				rd.include(request, response);
				out.println("<script>window.alert('Invalid email or password');</script>");
			}
			con.close();
		}catch(Exception e){
			out.print(e);
		}
	}

}
