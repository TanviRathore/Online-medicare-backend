<%@include file="db.jsp" %> 

<%
String id=request.getParameter("id");

String qr = "delete from appointment where id=?";
PreparedStatement ps= con.prepareStatement(qr);
ps.setString(1, id);

int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("Profile.jsp");
rd.include(request, response);
if(i>0)
{
	out.println("<script>window.alert('Deleted successfully!!!')</script>");
}
else
{
	out.println("<script>window.alert('not deleted!!!')</script>");
}
con.close();
%>