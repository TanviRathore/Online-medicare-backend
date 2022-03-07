<%@include file="db.jsp" %> 
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

<%
String cname = request.getParameter("cname");
String docname = request.getParameter("docname");
String speciality = request.getParameter("speciality");
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String cont = request.getParameter("contact");
long contact = Long.parseLong(cont);
String add = request.getParameter("add");
String fees = request.getParameter("fee");
int fee = Integer.parseInt(fees);
String facility = request.getParameter("facility");
String help = request.getParameter("help");
String location = request.getParameter("location");
String time = request.getParameter("time");
String img = request.getParameter("img");

File file ;
int maxFileSize = 5000 * 1024;
int maxMemSize = 5000 * 1024;
ServletContext context = pageContext.getServletContext();
String filePath = context.getInitParameter("file-upload");

// Verify the content type
String contentType = request.getContentType();

if ((contentType.indexOf("multipart/form-data") >= 0)) {
   DiskFileItemFactory factory = new DiskFileItemFactory();
   // maximum size that will be stored in memory
   factory.setSizeThreshold(maxMemSize);
   
   // Location to save data that is larger than maxMemSize.
   factory.setRepository(new File("c:\\temp"));

   // Create a new file upload handler
   ServletFileUpload upload = new ServletFileUpload(factory);
   
   // maximum file size to be uploaded.
   upload.setSizeMax( maxFileSize );
   
   try { 
      // Parse the request to get file items.
      List fileItems = upload.parseRequest(request);

      // Process the uploaded file items
      Iterator i = fileItems.iterator();
      
      while ( i.hasNext () ) {
         FileItem fi = (FileItem)i.next();
         if ( !fi.isFormField () ) {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName = fi.getName();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
         
            // Write the file
            if( fileName.lastIndexOf("\\") >= 0 ) {
               file = new File( filePath + 
               fileName.substring( fileName.lastIndexOf("\\"))) ;
            } else {
               file = new File( filePath + 
               fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            fi.write( file ) ;
         }
      }
   } catch(Exception ex) {
      System.out.println(ex);
   }
} else {
   out.println("<html>");
   out.println("<head>");
   out.println("<title>Servlet upload</title>");  
   out.println("</head>");
   out.println("<body>");
   out.println("<p>No file uploaded</p>"); 
   out.println("</body>");
   out.println("</html>");
   
   String qr = "insert into medFac values(1,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   
   PreparedStatement ps = con.prepareStatement(qr);
   
   ps.setString(1,cname);
   ps.setString(2,docname);
   ps.setString(3,speciality);
   ps.setString(4, email);
   ps.setString(5, pwd);
   ps.setLong(6,contact);
   ps.setInt(7, fee);
   ps.setString(8,facility);
   ps.setString(9, help);
   ps.setString(10, location);
   ps.setString(11, time);
   ps.setString(12, add);
   ps.setString(13, img);
   
  int i = ps.executeUpdate();
  con.close();
}
%>