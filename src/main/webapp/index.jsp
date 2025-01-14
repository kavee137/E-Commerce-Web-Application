<%--
  Created by IntelliJ IDEA.
  User: rukshan
  Date: 2025-01-13
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>E - commerce</title>

  <%--Bootstrap--%>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">



  <link rel="stylesheet" href="styles/home.css">


  <style>
    .navbar-toggler-icon {
      background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3E%3Cpath stroke='white' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
    }

    /*.dropdown-menu {*/
    /*  background-color: rgba(0, 0, 0, 0.8); !* Dark dropdown background *!*/
    /*  color: white; !* Text color *!*/
    /*}*/

    /*.dropdown-item:hover {*/
    /*  background-color: rgba(255, 255, 255, 0.1); !* Light hover effect *!*/
    /*}*/
  </style>
</head>

<body>

<main class="home-section">
  <%--Navigation bar--%>
  <nav class="navbar navbar-expand-lg bg-transparent">
    <div class="container-fluid">
          <img class="m-4" style="width: 150px" src="assets/home-page/web-logo.png" alt="Logo">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
              <li class="nav-item">
                <a class="nav-link text-white" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="#">Used Phone</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Categories
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="#">About us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="#">Contact Us</a>
              </li>
            </ul>



            <div class="button-container">


              <div class="inputBox_container">
                <svg class="search_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" alt="search icon">
                  <path d="M46.599 46.599a4.498 4.498 0 0 1-6.363 0l-7.941-7.941C29.028 40.749 25.167 42 21 42 9.402 42 0 32.598 0 21S9.402 0 21 0s21 9.402 21 21c0 4.167-1.251 8.028-3.342 11.295l7.941 7.941a4.498 4.498 0 0 1 0 6.363zM21 6C12.717 6 6 12.714 6 21s6.717 15 15 15c8.286 0 15-6.714 15-15S29.286 6 21 6z">
                  </path>
                </svg>
                <input class="inputBox" id="inputBox" type="text" placeholder="Search For Products">
              </div>


              <button class="button">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24" stroke-width="0" fill="currentColor" stroke="currentColor" class="icon">
                  <path d="M12 2.5a5.5 5.5 0 0 1 3.096 10.047 9.005 9.005 0 0 1 5.9 8.181.75.75 0 1 1-1.499.044 7.5 7.5 0 0 0-14.993 0 .75.75 0 0 1-1.5-.045 9.005 9.005 0 0 1 5.9-8.18A5.5 5.5 0 0 1 12 2.5ZM8 8a4 4 0 1 0 8 0 4 4 0 0 0-8 0Z"></path>
                </svg>
              </button>

              <button class="button">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" stroke-linejoin="round" stroke-linecap="round" viewBox="0 0 24 24" stroke-width="2" fill="none" stroke="currentColor" class="icon">
                  <circle r="1" cy="21" cx="9"></circle>
                  <circle r="1" cy="21" cx="20"></circle>
                  <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                </svg>
              </button>
            </div>



          </div>
        </div>
  </nav>

    <%--Home screen video--%>
    <video class="bg-video" autoplay muted loop>
        <source src="assets/apple.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>

    <div class="home-center-text">
      <div class="home-center-text-01">
        Experience Innovation. Own Apple.
      </div>
      <div class="home-center-text-02">
        Best place to buy Apple
      </div>
      <div class="home-center-text-03">
        products
      </div>
      <div>
        <button class="shop-now">
          <span data-aos="fade-up">Shop now</span>
        </button>
      </div>



    </div>




<%--      <div class="container p-10" style="background-color: red">--%>
<%--        <div>Experience Innovation. Own Apple.</div>--%>
<%--      </div>--%>

</main>

<main>
  <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti eius enim exercitationem facere fugit harum impedit ipsam magni modi neque nihil nisi officia omnis optio quia, quis velit voluptatum? Quam.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti eius enim exercitationem facere fugit harum impedit ipsam magni modi neque nihil nisi officia omnis optio quia, quis velit voluptatum? Quam.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti eius enim exercitationem facere fugit harum impedit ipsam magni modi neque nihil nisi officia omnis optio quia, quis velit voluptatum? Quam.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti eius enim exercitationem facere fugit harum impedit ipsam magni modi neque nihil nisi officia omnis optio quia, quis velit voluptatum? Quam.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti eius enim exercitationem facere fugit harum impedit ipsam magni modi neque nihil nisi officia omnis optio quia, quis velit voluptatum? Quam.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti eius enim exercitationem facere fugit harum impedit ipsam magni modi neque nihil nisi officia omnis optio quia, quis velit voluptatum? Quam.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti eius enim exercitationem facere fugit harum impedit ipsam magni modi neque nihil nisi officia omnis optio quia, quis velit voluptatum? Quam.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti eius enim exercitationem facere fugit harum impedit ipsam magni modi neque nihil nisi officia omnis optio quia, quis velit voluptatum? Quam.
  </p>
</main>







<!--Bootstrap-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>



</body>
</html>
