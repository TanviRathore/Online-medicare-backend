/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2022-04-15 17:56:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;

public final class Profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/db.jsp", Long.valueOf(1650011585235L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("javax.servlet.http.HttpSession");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
    _jspx_imports_classes.add("java.sql.DriverManager");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medicare","root","1607");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicare","root","1607");
Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicare","root","1607");

      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" ");
String userName = (String)session.getAttribute("username"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\" />\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"> \r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"> \r\n");
      out.write("    <title>Online Medicare</title>\r\n");
      out.write("\r\n");
      out.write("    <meta name=\"author\" content=\"Codeconvey\" />\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap\" rel=\"stylesheet\"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>\r\n");
      out.write("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>\r\n");
      out.write("\r\n");
      out.write("   <link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("    <link rel=\"icon\" href=\"./assets/logo$.png\" type=\"image/icon type\">\r\n");
      out.write("    <!-- CSS only -->\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n");
      out.write("        integrity=\"sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We\" crossorigin=\"anonymous\">\r\n");
      out.write("    <!-- icons -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://pro.fontawesome.com/releases/v5.10.0/css/all.css\"\r\n");
      out.write("        integrity=\"sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p\" crossorigin=\"anonymous\" />\r\n");
      out.write("    <title>Medicare</title>\r\n");
      out.write("\t    \r\n");
      out.write("\t    <style>\r\n");
      out.write("\t    \tbody {\r\n");
      out.write("    background: #67B26F;  /* fallback for old browsers */\r\n");
      out.write("    background: -webkit-linear-gradient(to right, #4ca2cd, #67B26F);  /* Chrome 10-25, Safari 5.1-6 */\r\n");
      out.write("    background: linear-gradient(to right, #4ca2cd, #67B26F); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\r\n");
      out.write("    padding: 0;\r\n");
      out.write("    margin: 0;\r\n");
      out.write("    font-family: 'Lato', sans-serif;\r\n");
      out.write("    color: #000;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".student-profile .card {\r\n");
      out.write("    border-radius: 10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".student-profile .card .card-header .profile_img {\r\n");
      out.write("    width: 150px;\r\n");
      out.write("    height: 150px;\r\n");
      out.write("    object-fit: cover;\r\n");
      out.write("    margin: 10px auto;\r\n");
      out.write("    border: 10px solid #ccc;\r\n");
      out.write("    border-radius: 50%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".student-profile .card h3 {\r\n");
      out.write("    font-size: 20px;\r\n");
      out.write("    font-weight: 700;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".student-profile .card p {\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("    color: #000;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".student-profile .table th,\r\n");
      out.write(".student-profile .table td {\r\n");
      out.write("    font-size: 14px;\r\n");
      out.write("    padding: 5px 10px;\r\n");
      out.write("    color: #000;\r\n");
      out.write("}\r\n");
      out.write("\t    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<header>\r\n");
      out.write("        <nav class=\"navbar navbar-expand-md rounded d-flex justify-content-between\">\r\n");
      out.write("            <div style=\"height:70px; width: 120px;\">\r\n");
      out.write("                <div style=\"width: 100%; height: 100%;\">\r\n");
      out.write("                    <img src=\"./assets/Logo (2).png\" alt=\"logo\" style=\"width:100%; height: 100%; background-size: 200% auto;\" class=\"rounded\"/>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"d-flex flex-row justify-content-between\">\r\n");
      out.write("                <div style=\"align-items: center; padding: 10px;\">\r\n");
      out.write("                    <a class=\" text-white\" href=\"Profile.jsp\" style=\"margin: 10px;\">\r\n");
      out.write("                        ");
      out.print(userName );
      out.write("\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <a class=\"btn button-outline-none text-white m-1\" href=\"Signout\">\r\n");
      out.write("                        sign out\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    </header>\r\n");
      out.write("\r\n");
      out.write("<section>\r\n");
      out.write("    <div class=\"rt-container\">\r\n");
      out.write("          <div class=\"col-rt-12\">\r\n");
      out.write("              <div class=\"Scriptcontent\">\r\n");
      out.write("              \r\n");
      out.write("<!-- Student Profile -->\r\n");
      out.write("<div class=\"student-profile py-4\">\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("      <div class=\"col-lg-4\">\r\n");
      out.write("        <div class=\"card shadow-sm\">\r\n");
      out.write("          <div class=\"card-header bg-transparent text-center\">\r\n");
      out.write("            <img class=\"profile_img\" src=\"https://source.unsplash.com/600x300/?student\" alt=\"student dp\">\r\n");
      out.write("            <h3>");
      out.print(userName );
      out.write("</h3>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"card-body\">\r\n");
      out.write("            <p class=\"mb-0\"><strong class=\"pr-1\">User ID:</strong>321000001</p>\r\n");
      out.write("      \r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      <div class=\"col-lg-8\">\r\n");
      out.write("        <div class=\"card shadow-sm\">\r\n");
      out.write("          <div class=\"card-header bg-transparent border-0\">\r\n");
      out.write("            <h3 class=\"mb-0\"><i class=\"far fa-clone pr-1\"></i>General Information</h3>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"card-body pt-0\">\r\n");
      out.write("            <table class=\"table table-bordered\">\r\n");
      out.write("              <tr>\r\n");
      out.write("                <th width=\"30%\">Name</th>\r\n");
      out.write("                 ");
 
  String qr="select * from user where userName=?";
  PreparedStatement ps =con.prepareStatement(qr);
  ps.setString(1,userName);
  ResultSet res1 = ps.executeQuery();
	  if(res1.next()){
 		do
	  	{
		  String name = res1.getString("name");
		  String add = res1.getString("address") ;
		  String cont = res1.getString("contact"); 
		  String email = res1.getString("email");
		 
      out.write("\r\n");
      out.write("\t  \r\n");
      out.write("\t                <td width=\"2%\">:</td>\r\n");
      out.write("\t                <td>");
      out.print(name );
      out.write("</td>\r\n");
      out.write("\t            \r\n");
      out.write("\t              </tr>\r\n");
      out.write("\t              <tr>\r\n");
      out.write("\t                <th width=\"30%\">Address\t</th>\r\n");
      out.write("\t                <td width=\"2%\">:</td>\r\n");
      out.write("\t               <td>");
      out.print(add);
      out.write("</td>\r\n");
      out.write("\t              </tr>\r\n");
      out.write("\t              <tr>\r\n");
      out.write("\t                <th width=\"30%\">Contact no</th>\r\n");
      out.write("\t                <td width=\"2%\">:</td>\r\n");
      out.write("\t                 <td>");
      out.print(cont);
      out.write("</td>\r\n");
      out.write("\t              </tr>\r\n");
      out.write("\t              <tr>\r\n");
      out.write("\t                <th width=\"30%\">Email</th>\r\n");
      out.write("\t                <td width=\"2%\">:</td>\r\n");
      out.write("\t                 <td>");
      out.print(email );
      out.write("</td>\r\n");
      out.write("\t              </tr>\r\n");
      out.write("\t              \r\n");
      out.write("\t            </table>\r\n");
      out.write("\t          </div>\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t        ");
}while(res1.next());
	  }
	  con.close();
	  
      out.write("\r\n");
      out.write("          <div style=\"height: 26px\"></div>\r\n");
      out.write("        <div class=\"card shadow-sm\">\r\n");
      out.write("          <div class=\"card-header bg-transparent border-0\">\r\n");
      out.write("            <h3 class=\"mb-0\"><i class=\"far fa-clone pr-1\"></i> Appointment</h3>\r\n");
      out.write("            <table>\r\n");
      out.write("            ");
 

  String qr2="select * from appointment where userName=?";
  PreparedStatement ps2 =con1.prepareStatement(qr2);
  ps2.setString(1,userName);
  ResultSet res=ps2.executeQuery();
	  if(res.next()){
  		do
	  	{
  			String id = res.getString("id");
  			
  			System.out.println(id);
  			
  			String qr3 = "select name,clinicName,address from medFac where id=?";
  			PreparedStatement ps3 =con2.prepareStatement(qr3);
  			ps3.setString(1, id);
  			ResultSet rs=ps3.executeQuery();
  			if(rs.next())
  			{
  				do{
  		  			String dName = rs.getString("name");
  		  			String address = rs.getString("address");
  		  			String cname = rs.getString("clinicName");
  		  			System.out.println(dName);
  		  			
      out.write("\r\n");
      out.write("\t\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t\t  <td>");
      out.print(dName );
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t  <td>");
      out.print(cname );
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t  <td>");
      out.print(address );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t        \r\n");
      out.write("\t\t\t\t       <td>\r\n");
      out.write("\t\t\t\t\t         <a href=\"delete.jsp?id=");
      out.print(id );
      out.write("\" class=\" btn button-outline-none text-white m-1\"> Delete Appointment</a>\r\n");
      out.write("\t\t\t\t\t    </td>\r\n");
      out.write("\t\t\t\t\t  </tr>\r\n");
      out.write("  \t\t  \t\t\t");
 
  				}while(rs.next());
  			}
	  }while(res.next());
	  }
		con2.close();
		con1.close();
  
      out.write("\r\n");
      out.write("  \t\t\t\t\t  </table>\r\n");
      out.write("  \r\n");
      out.write("          </div>\r\n");
      out.write("       </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("    \t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("    </div>\r\n");
      out.write("</section>\r\n");
      out.write("     \r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- Analytics -->\r\n");
      out.write("\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
