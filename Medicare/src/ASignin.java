

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
 * Servlet implementation class ASignin
 */
@WebServlet("/ASignin")
public class ASignin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out  = response.getWriter();
		response.setContentType("text/html");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		
		if(email.equals("admin@gmail.com") && pwd.equals("Admin@123"))
		{
			response.sendRedirect("ahome.html");
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("aLogin.html");
			rd.include(request, response);
			out.println("<script>window.alert('Invalid email or password');</script>");
		}
	}

}
