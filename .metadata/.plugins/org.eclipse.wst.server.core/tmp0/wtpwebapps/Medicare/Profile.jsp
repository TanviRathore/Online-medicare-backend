
<%@page import="java.sql.*" %>
<%@include file="db.jsp" %> 
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession"%>
 <%String userName = (String)session.getAttribute("username"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Online Medicare</title>

    <meta name="author" content="Codeconvey" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

   <link rel="stylesheet" href="style.css">
    <link rel="icon" href="./assets/logo$.png" type="image/icon type">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <!-- icons -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <title>Medicare</title>
	    
	    <style>
	    	body {
    background: #67B26F;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #4ca2cd, #67B26F);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #4ca2cd, #67B26F); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    padding: 0;
    margin: 0;
    font-family: 'Lato', sans-serif;
    color: #000;
}

.student-profile .card {
    border-radius: 10px;
}

.student-profile .card .card-header .profile_img {
    width: 150px;
    height: 150px;
    object-fit: cover;
    margin: 10px auto;
    border: 10px solid #ccc;
    border-radius: 50%;
}

.student-profile .card h3 {
    font-size: 20px;
    font-weight: 700;
}

.student-profile .card p {
    font-size: 16px;
    color: #000;
}

.student-profile .table th,
.student-profile .table td {
    font-size: 14px;
    padding: 5px 10px;
    color: #000;
}
	    </style>
</head>
<body>
		


<header>
        <nav class="navbar navbar-expand-md rounded d-flex justify-content-between">
            <div style="height:70px; width: 120px;">
                <div style="width: 100%; height: 100%;">
                    <img src="./assets/Logo (2).png" alt="logo" style="width:100%; height: 100%; background-size: 200% auto;" class="rounded"/>
                </div>
            </div>
            <div class="d-flex flex-row justify-content-between">
                <div style="align-items: center; padding: 10px;">
                    <a class=" text-white" href="Profile.jsp" style="margin: 10px;">
                        <%=userName %>
                    </a>
                </div>
                <div>
                    <a class="btn button-outline-none text-white m-1" href="Signout">
                        sign out
                    </a>
                </div>
            </div>
        </nav>
    </header>

<section>
    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">
              
<!-- Student Profile -->
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">
            <img class="profile_img" src="https://source.unsplash.com/600x300/?student" alt="student dp">
            <h3><%=userName %></h3>
          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">User ID:</strong>321000001</p>
      
          </div>
        </div>
      </div>
      
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered">
              <tr>
                <th width="30%">Name</th>
                 <% 
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
		 %>
	  
	                <td width="2%">:</td>
	                <td><%=name %></td>
	            
	              </tr>
	              <tr>
	                <th width="30%">Address	</th>
	                <td width="2%">:</td>
	               <td><%=add%></td>
	              </tr>
	              <tr>
	                <th width="30%">Contact no</th>
	                <td width="2%">:</td>
	                 <td><%=cont%></td>
	              </tr>
	              <tr>
	                <th width="30%">Email</th>
	                <td width="2%">:</td>
	                 <td><%=email %></td>
	              </tr>
	              
	            </table>
	          </div>
	        </div>
	        <%}while(res1.next());
	  }
	  con.close();
	  %>
          <div style="height: 26px"></div>
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i> Appointment</h3>
            <table>
            <% 

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
  		  			%>
					  <tr>
					  <td><%=dName %></td>

					  <td><%=cname %></td>

				
					  <td><%=address %></td>
					        
				       <td>
					         <a href="delete.jsp?id=<%=id %>" class=" btn button-outline-none text-white m-1"> Delete Appointment</a>
					    </td>
					  </tr>
  		  			<% 
  				}while(rs.next());
  			}
	  }while(res.next());
	  }
		con2.close();
		con1.close();
  %>
  					  </table>
  
          </div>
       </div>
      </div>
    </div>
  </div>
</div>
      
      
    		</div>
		</div>
    </div>
</section>
     

  
  
 


    <!-- Analytics -->

	</body>
</html>