<%@include file="db.jsp" %> 
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./assets/logo$.png" type="image/icon type">
    <link rel="stylesheet" href="style.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <!-- icons -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
     
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	
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
                    <form class="d-flex flex-row m-1" action="city.jsp">
                        <input type="text" name="city" placeholder="Enter your city" class="rounded" required/>
                        <input type="submit" value="search" class="rounded btn text-white"/>
                    </form>
                </div>
                <div>
                    <a class="btn button-outline-none text-white m-1" href="signin.html">
                        sign in
                    </a>
                </div>
                <div>
                    <a class="btn button-outline-none text-white m-1" href="signup.html">
                        sign up
                    </a>
                </div>
            </div>
        </nav>
    </header>
    
    <main class="conatiner m-5">
    
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
        </ol>
        
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://image.shutterstock.com/image-photo/doctor-team-medical-clinic-background-260nw-1038498589.jpg" class="d-block w-100" alt="Slide 1" style="height:280px">
            </div>
            <div class="carousel-item">
                <img src="https://sahyadrihospital.com/wp-content/uploads/2021/05/speciality-clinic.jpg" class="d-block w-100" alt="Slide 2" style="height:280px">
            </div>
            <div class="carousel-item">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO3gV1rKKz-QTmbHjgm-zyxz1ptC44jJ_Cvw&usqp=CAU" class="d-block w-100" alt="Slide 3" style="height:280px">
            </div>
        </div>

        <!-- Carousel controls -->
        <a class="carousel-control-prev" href="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    
    	<div class="row">

	<%
	String qr = "select * from medFac";
	
	PreparedStatement ps = con.prepareStatement(qr);
	
	ResultSet rs = ps.executeQuery();
	 if(rs.next())
	 {
		 do{
			 String cname = rs.getString("clinicName");
			 String img = rs.getString("img");
			 String add = rs.getString("address");
			 String id = rs.getString("id");
			 String time = rs.getString("time");
			 %>
		
	            <div class=" col-3 gap-5 mt-4">
	                <div class="card" style="height:400px">
	                    <div class="card-body">
	                      <h5 class="card-title"><%=cname%></h5>
	                      <img style="height:200px" class="card-img-top" <%out.println("src=./images/"+img) ;%> alt="Card image cap">
	                      <p class="card-text">
	                      	<%=add %><br>
	                      	from: <%=time %>
	                      </p>
	                      <a <%out.println("href=page.jsp?id="+id); %> class="btn text-white">Go to clinic</a>
	                    </div>
	                </div>
	            </div>
			 
			 <% 
		 }while(rs.next());
	 }
	
	%>
		</div>
    </main>

</body>
</html>