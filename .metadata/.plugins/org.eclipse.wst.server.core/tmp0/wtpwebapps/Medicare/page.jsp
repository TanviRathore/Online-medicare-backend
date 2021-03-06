<%@include file="db.jsp" %> 
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession"%>

 <%String userName = (String)session.getAttribute("username"); %>

<html lang="en">
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
                <%if(userName==null){ %>
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
                 <%
                }else{                 
                 %>
                  <a class=" text-white" href="Profile.jsp" style="margin: 10px;">
                        <%=userName %>
                   </a>
                   <div>
	                    <a class="btn button-outline-none text-white m-1" href="Signout">
	                        sign out
	                    </a>
                   </div>
                  <%} %>
            </div>
        </nav>
    </header>

    <main class="conatiner m-5">
  		
  		<%
  			String id=request.getParameter("id");
  			
  		String qr = "select * from medFac where id=?";
  		
  		PreparedStatement ps = con.prepareStatement(qr);
  		ps.setString(1, id);
  		
  		ResultSet rs = ps.executeQuery();
  		
  		if(rs.next())
  		{
  			do{
  				String cname=rs.getString("clinicName");
  				String name=rs.getString("name");
  				String special=rs.getString("special");
  				String degree=rs.getString("clinicName");
  				String time=rs.getString("time");
  				String help=rs.getString("help");
  				String facility=rs.getString("facilities");
  				String address=rs.getString("address");
  				String contact=rs.getString("contact");
  				String email=rs.getString("email");
  				String deg = rs.getString("degree");
  				String img = rs.getString("img");
  				String lo = rs.getString("lon");
  				String la = rs.getString("lat");
  				String fee=rs.getString("fee");
  				
  				double lon = Double.parseDouble(lo);
  				double lat = Double.parseDouble(la);
  				
  				String s = "'https://www.openstreetmap.org/export/embed.html?bbox=75.87608546018602%2C22.71735201562886%2C75.87907880544664%2C22.718762260406375&amp;layer=mapnik&amp;marker="+lon+"%2C"+lat+"' style='border: 1px solid black'";
  				
  				%>
  				<div class="container ">
			        <div class="row" style="height:300px">
					    <div class="col-6" style="height=100px">
					      <img <%out.println("src='./images/"+img+"'");%> alt="img" class="rounded img" style="width:100%; height:270px"/>
					    </div>
					    <div class="col" style="height:100px">
					      <img <%out.println("src='./images/"+img+"'");%>  alt="img"  class="rounded img" style="width:100%;height:135px"/>
					      <img <%out.println("src='./images/"+img+"'");%>  alt="img"  class="rounded img" style="width:100%;height:135px"/>
					    </div>
					    <div class="col" >
					      <img <%out.println("src='./images/"+img+"'");%>  alt="img" class="rounded" style="width:100%; height:135px"/>
					      <img <%out.println("src='./images/"+img+"'");%> alt="img" class="rounded" style="width:100%;height:135px"/>
					    </div>
				    </div>
		  		</div>
  				<div style="padding:60px" class="container">
  					<div class="row justify-contain-space-between">
		  				<div class="col-7">
			  				<h1 ><%=cname%></h1>
					  		<h5><%=address%></h5><br><br>
					  		
					  		<div class="d-flex justify-content-between">
					  		<h3><%=name %></h3><h4> from: <%=time%></h4><br>
					  		</div>
					  		<h4>(<%=deg%>)</h4>
			  				<h4>(<%=special%>)</h4><br>
			  				
					  		<h3>Consultant fee: <%=fee%></h3>
					  		<h3>Facilities Available: <%=facility %></h3>
					  		<h3>Help Applicable: <%=help%></h3><br>
					  		<h3>Contact</h3>
					  		<h4><%=contact %></h4>
					  		<h4><%=email %></h4><br>
					  		<a <%out.println("href=App?id="+id+"&time="+time); %> class="btn text-white">Book an appointment</a>
					  		</div>
		  				<div class="col">
			  				<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
			  				 <%out.println("src='https://www.openstreetmap.org/export/embed.html?bbox="+(lat-0.01999999)+"%2C"+(lon-0.019999)+"%2C"+(lat+0.0199999)+"%2C"+(lon+0.0199999)+"&amp;layer=mapnik&amp;marker="+lon+"%2C"+lat+"' style='border: 1px solid black'");%>>
			  				 </iframe><br/>
			  				 <small>
			  				 <a href="https://www.openstreetmap.org/?mlat=22.7248&amp;mlon=75.8582#map=16/22.7248/75.8582">View Larger Map</a>
			  				 </small>
		  				</div>
		  			</div>
		  		</div>
		  		
  				<% 
  			}while(rs.next());
  		}
  		con.close();
  		%>
    </main>

</body>
</html>