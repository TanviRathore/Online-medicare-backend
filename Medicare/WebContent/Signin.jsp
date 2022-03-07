<%@include file="db.jsp" %> 
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
String email = request.getParameter("email");
String pwd = request.getParameter("password");

	String qr = "select * from user where email=? and pwd=?";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1, email);
	ps.setString(2, pwd);
	ResultSet rs = ps.executeQuery();
	if(rs.next())
	{
		do
		{
			session.setAttribute("id", email);
			String userName = rs.getString("userName");
			session.setAttribute("username", userName);
			response.sendRedirect("userhome.jsp");
		}while(rs.next());
	}
	else
	{
		out.println("<script>window.alert('Invalid email or password');</script>");
		response.sendRedirect("signin.html");
	}
	con.close();
%>