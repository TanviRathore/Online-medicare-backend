<%@include file="db.jsp" %> 
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession"%>

 <%
 String userName = (String)session.getAttribute("username"); 
 if(userName==null)
 {
	 RequestDispatcher rd=request.getRequestDispatcher("page.jsp");
		rd.include(request, response);
		out.println("<script>window.alert('please sign in first!!!');</script>");
	 
 }
 else{
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
	out.println("<head><script>window.alert('sucessfully made an appointmnent');</script></head>");
	RequestDispatcher rd=request.getRequestDispatcher("page.jsp");
	
	rd.include(request, response);

}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("page.jsp");
	rd.include(request, response);
	%>

	<html>
	<head>
		<script>
			alert("Successfuly made an appointment");
		</script>
	</head>
	</html>
	
	<%
}
 }
con.close();
 
 %>
