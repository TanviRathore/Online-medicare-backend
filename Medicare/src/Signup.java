

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out  = response.getWriter();
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String userName = request.getParameter("Uname");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String contact = request.getParameter("Contact");
		long cont = Long.parseLong(contact);
		String add = request.getParameter("address");
		String lon = request.getParameter("lon");
		String lat = request.getParameter("lat");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medicare","root","1607");
			String qr = "insert into user values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(qr);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pwd);
			ps.setString(4, add);
			ps.setString(5, userName);
			ps.setLong(6, cont);
			ps.setString(7, lat);
			ps.setString(8, lon);
			int i = ps.executeUpdate();
			if(i>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("signin.html");
				rd.include(request, response);
				out.println("<script>window.alert('sucessfully signedup');</script>");
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("signup.html");
				rd.include(request, response);
				out.println("<script>window.alert('registration failed');</script>");
			}
			con.close();
		}catch(Exception e)
		{
			out.println(e);
		}
	}

}
