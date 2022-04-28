<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medicare","root","1607");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicare","root","1607");
Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicare","root","1607");
%>