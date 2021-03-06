

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class App
 */
@WebServlet("/App")
public class App extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out  = response.getWriter();
		response.setContentType("text/html");
		
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("username"); 
		 if(userName==null)
		 {
			 RequestDispatcher rd=request.getRequestDispatcher("page.jsp");
				rd.include(request, response);
				out.println("<script>window.alert('please sign in first!!!');</script>");
			 
		 }
		 else{
			 try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medicare","root","1607");
		 String id = request.getParameter("id");
		 String time = request.getParameter("time");
		 
		 String qr = "insert into appointment values(?,?,?)";
		 
		 PreparedStatement ps = con.prepareStatement(qr);
		 
		ps.setString(1, userName);
		ps.setString(2, id);
		ps.setString(3, time);

		int i = ps.executeUpdate();

		if(i>0)
		{
			out.println("<script>window.alert('sucessfully made an appointmnent');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("userhome.jsp");
			rd.include(request, response);

		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("userhome.jsp");
			rd.include(request, response);
			out.println("<script>window.alert('sucessfully signedup');</script>");
		}
		con.close();
	}catch(Exception e)
	{
		//out.println(e);
		RequestDispatcher rd=request.getRequestDispatcher("userhome.jsp");
		rd.include(request, response);
		out.println("<script>window.alert('Already made an appointment');</script>");
	}
	}
	}
}

