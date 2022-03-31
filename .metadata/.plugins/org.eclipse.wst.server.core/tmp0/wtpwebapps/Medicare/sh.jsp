<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<% String iname=request.getParameter("iname"); %>
<%

String email =(String)session.getAttribute("email"); 
String qr="update medFac set img=? where email=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, iname);
ps.setString(2, email);
int i=ps.executeUpdate();
response.sendRedirect("ClinicSignin.html");
con.close();
%>
