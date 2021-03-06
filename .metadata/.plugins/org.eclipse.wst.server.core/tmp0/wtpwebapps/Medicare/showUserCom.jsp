<%@include file="db.jsp" %> 

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
                <div>
                    <a class="btn button-outline-none text-white m-1" href="signout.html">
                        sign out
                    </a>
                </div>
            </div>
        </nav>
    </header>

    <main class="conatiner m-5">
    	<section>
    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">
              

      
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Hospital Complain</h3>
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered">
            
              <tr>
              <th>Medical id</th><th> complain</th><th>User id</tr>
                
              <tr>
                
                <% 
  Statement stmt=con.createStatement();
  String data="select * from medcomplain";
  ResultSet res=stmt.executeQuery(data);
  while(res.next())
  {
	  
  %>
  <tr>
	    
	     <td><%=res.getString("id") %></td>
	     <td><%=res.getString("complain") %></td>
	     <td><%=res.getString("userName") %></td>
	      
	         
	  </tr>
	  
	       <% 
                 }
  
            %>
            
             </tr>
                
                
             
               
            </table>
          </div>
        </div>
          
    </div>
  </div>
</div>
      
      
    		</div>
		</div>
    </div>
</section>
    </main>