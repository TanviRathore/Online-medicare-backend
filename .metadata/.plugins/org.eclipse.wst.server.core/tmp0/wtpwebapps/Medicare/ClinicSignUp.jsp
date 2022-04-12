<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="./assets/logo$.png" type="image/icon type">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <!-- icons -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <title>Medicare</title>
</head>

<body style="background-color: rgb(253, 247, 247); font-family: 'Satisfy', cursive; overflow-x: hidden;">
    
    <header>
        <nav class="navbar navbar-expand-md rounded d-flex justify-content-between">
            <div style="height:70px; width: 120px;">
                <div style="width: 100%; height: 100%;">
                    <img src="./assets/Logo (2).png" alt="logo" style="width:100%; height: 100%; background-size: 200% auto;" class="rounded"/>
                </div>
            </div>
            <div class="d-flex flex-row justify-content-between">
                <div>
                    <a class="btn button-outline-none text-white m-1" href="ClinicSignin.html">
                        Medical facility sign in
                    </a>
                </div>
                <div>
                    <a class="btn button-outline-none text-white m-1" href="aLogin.html">
                        Admin Log in
                    </a>
                </div>
            </div>
        </nav>
    </header>

<%@include file="db.jsp" %> 
<%@page  errorPage="error.jsp" %>

<%
	String cname = request.getParameter("cname");
	String docname = request.getParameter("docname");
	String speciality = request.getParameter("speciality");
	String email = request.getParameter("email");
	session.setAttribute("email", email);
	String pwd = request.getParameter("pwd");
	String contact = request.getParameter("contact");
	long cont = Long.parseLong(contact);
	String add = request.getParameter("add");
	String fees = request.getParameter("fee");
	int fee = Integer.parseInt(fees);
	String facility = request.getParameter("facility");
	String help = request.getParameter("help");
	String lon = request.getParameter("lon");
	String lat = request.getParameter("lat");
	String time = request.getParameter("time");
	String deg = request.getParameter("deg");
   
   String qr = "insert into medFac (clinicName, name, special, email, pwd, fee, facilities, help, time, address,contact, degree, lon, lat) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   
   PreparedStatement ps = con.prepareStatement(qr);
   
   ps.setString(1,cname);
   ps.setString(2,docname);
   ps.setString(3,speciality);
   ps.setString(4, email);
   ps.setString(5, pwd);
   ps.setInt(6, fee);
   ps.setString(7,facility);
   ps.setString(8, help);
   ps.setString(9, time);
   ps.setString(10, add);
   ps.setLong(11, cont);
   ps.setString(12, deg);
   ps.setString(13, lon);
   ps.setString(14, lat);
   
  int i = ps.executeUpdate();
%>


    <main class="conatiner m-5">
        <div class="d-flex justify-content-center">
                <form action = "UploadServlet.jsp" method = "post" enctype = "multipart/form-data">
                <div class="form-group">
                  <label for="email">Upload Image</label>
                  <input type="file" class="form-control" id="file" name="file" size="100" required>
                </div><br>
                <button type="submit" class="btn text-white">Upload file</button>
            </form>
        </div>
    </main>

</body>
</html>