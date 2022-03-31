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
                <div style="align-items: center; padding: 10px;">
                    <a class=" text-white" href="Profile.html" style="margin: 10px;">
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

    <main class="conatiner m-5">
        <div class="row">
            <div class=" col-3 gap-5 mt-4">
                <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Shri Sai Clinic</h5>
                      <img class="card-img-top" src="./assets/Logo 500x500 px.jpeg" alt="Card image cap">
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="page.html" class="btn text-white">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class=" col-3  gap-5 mt-4">
                <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Dr. Agrawal's Clinic</h5>
                      <img class="card-img-top" src="./assets/Logo 500x500 px.jpeg" alt="Card image cap">
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="page.html" class="btn text-white">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class=" col-3  gap-5 mt-4">
                <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Bafna Hospital</h5>
                      <img class="card-img-top" src="./assets/Logo 500x500 px.jpeg" alt="Card image cap">
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="page.html" class="btn text-white">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class=" col-3  gap-5 mt-4">
                <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Aditya Hospital</h5>
                      <img class="card-img-top" src="./assets/Logo 500x500 px.jpeg" alt="Card image cap">
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="page.html" class="btn text-white">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class=" col-3  gap-5 mt-4">
                <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Aditya Hospital</h5>
                      <img class="card-img-top" src="./assets/Logo 500x500 px.jpeg" alt="Card image cap">
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="page.html" class="btn text-white">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
    </main>

</body>
</html>