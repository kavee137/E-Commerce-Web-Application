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

  <%--font roboto flex--%>
  <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:ital,wght@0,200..800;1,200..800&family=Roboto+Flex:opsz,wght@8..144,100..1000&family=Urbanist:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">



  <link rel="stylesheet" href="styles/home.css">
  <link rel="stylesheet" href="styles/home-category-section.css">
  <link rel="stylesheet" href="styles/product-lineup.css">
  <link rel="stylesheet" href="styles/ipad-section.css">
  <link rel="stylesheet" href="styles/footer.css">


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
    <div class="container-fluid px-4">
          <img class="m-4" style="width: 150px" src="assets/home-page/web-logo.png" alt="Logo">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
              <li class="nav-item">
                <a class="nav-link text-white" aria-current="page" href="admin-login.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="#">Used Phone</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Categories
                </a>
                <ul class="dropdown-menu">

                  <li>
                    <a class="dropdown-item" style="background-color: #f4f4f4" href="#">
                      iPhone
                      <img class="category-list-img" src="assets/home-page/category-iphone.png" alt="iPhone">
                    </a>
                  </li>

                  <li>
                    <a class="dropdown-item" style="background-color: #f4f4f4" href="#">
                      Accessories
                      <img class="category-list-img" src="assets/home-page/category-accessory.png" alt="Accessories">
                    </a>
                  </li>
<%--                  <li><hr class="dropdown-divider"></li>--%>
                  <li>
                    <a class="dropdown-item" style="background-color: #f4f4f4" href="#">
                      iPad
                      <img class="category-list-img" src="assets/home-page/category-ipad.png" alt="iPad">
                    </a>
                  </li>

                  <li>
                    <a class="dropdown-item" style="background-color: #f4f4f4" href="#">
                      Airpods
                      <img class="category-list-img" src="assets/home-page/category-airpods.png" alt="Airpods">
                    </a>
                  </li>

                  <li>
                    <a class="dropdown-item" style="background-color: #f4f4f4" href="#">
                      Mac
                      <img class="category-list-img" src="assets/home-page/category-imac.png" alt="Mac">
                    </a>
                  </li>

                  <li>
                    <a class="dropdown-item" style="background-color: #f4f4f4" href="#">
                      Apple watch
                      <img class="category-list-img" src="assets/home-page/category-iwatch.png" alt="apple watch">
                    </a>
                  </li>

                  <li>
                    <a class="dropdown-item" style="background-color: #f4f4f4" href="#">
                      iPad
                      <img class="category-list-img" src="assets/home-page/category-ipad.png" alt="iPad">
                    </a>
                  </li>

                  <li>
                    <a class="dropdown-item" style="background-color: #f4f4f4" href="#">
                      Air tag
                      <img class="category-list-img" src="assets/home-page/category-air-tag.png" alt="Air tag">
                    </a>
                  </li>

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

<main class="category-section">

  <div class="container-fluid">
    <div class="category-list">

      <div class="category-item cursor-pointer">
        <img src="assets/home-page/category-iphone.png" alt="iPhone">
        <p>IPHONE</p>
      </div>

      <div class="category-item cursor-pointer">
        <img src="assets/home-page/category-accessory.png" alt="Accessories">
        <p>ACCESSORIES</p>
      </div>

      <div class="category-item cursor-pointer">
        <img src="assets/home-page/category-ipad.png" alt="iPad">
        <p>IPAD</p>
      </div>

      <div class="category-item cursor-pointer">
        <img src="assets/home-page/category-airpods.png" alt="AirPods">
        <p>AIRPODS</p>
      </div>
      <div class="category-item cursor-pointer">
        <img src="assets/home-page/category-imac.png" alt="Mac">
        <p>MAC</p>
      </div>
      <div class="category-item cursor-pointer">
        <img src="assets/home-page/category-iwatch.png" alt="Apple Watch">
        <p>APPLE WATCH</p>
      </div>
      <div class="category-item cursor-pointer">
        <img src="assets/home-page/category-air-tag.png" alt="AirTag">
        <p>AIRTAG</p>
      </div>
    </div>
  </div>

</main>

<main class="design-section">
  <div class="design-section-img-div">
    <img src="assets/home-page/apple-products.jpg">
  </div>
</main>

<%--iPhone product lineup--%>
<main>

  <div class="container mt-5">

    <h2>iPhone lineup</h2>

    <div class="d-flex flex-wrap justify-content-around">

      <div class="card cursor-pointer m-2" style="width: 18rem; border: none;">
        <img src="assets/home-page/product-iphone-16-pro-max.png" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center">iPhone 16 Pro Max</h5>
          <p class="card-text text-center">The ultimate iPhone.</p>
          <h6 class="card-price text-center">$899</h6>
        </div>
      </div>

      <div class="card cursor-pointer m-2" style="width: 18rem; border: none">
        <img src="assets/home-page/product-iphone-16-pro.png" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center">iPhone 16 Pro</h5>
          <p class="card-text text-center">The ultimate iPhone.</p>
          <h6 class="card-price text-center">$799</h6>
        </div>
      </div>

      <div class="card cursor-pointer m-2" style="width: 18rem; border: none">
        <img src="assets/home-page/product-iphone-16-plus.png" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center">iPhone 16 Plus</h5>
          <p class="card-text text-center">The ultimate iPhone.</p>
          <h6 class="card-price text-center">$699</h6>
        </div>
      </div>

      <div class="card cursor-pointer m-2" style="width: 18rem; border: none">
        <img src="assets/home-page/product-iphone-15-pro-max.png" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center">iPhone 15 Pro Max</h5>
          <p class="card-text text-center">The ultimate iPhone.</p>
          <h6 class="card-price text-center">$899</h6>
        </div>
      </div>

      <div class="card cursor-pointer m-2" style="width: 18rem; border: none">
        <img src="assets/home-page/product-iphone-15.png" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center">iPhone 15</h5>
          <p class="card-text text-center">The ultimate iPhone.</p>
          <h6 class="card-price text-center">$899</h6>
        </div>
      </div>

      <div class="card cursor-pointer m-2" style="width: 18rem; border: none">
        <img src="assets/home-page/product-iphone-14.png" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center">iPhone 14</h5>
          <p class="card-text text-center">The ultimate iPhone.</p>
          <h6 class="card-price text-center">$899</h6>
        </div>
      </div>

      <div class="card cursor-pointer m-2" style="width: 18rem; border: none">
        <img src="assets/home-page/product-iphone-12.png" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center">iPhone 12</h5>
          <p class="card-text text-center">The ultimate iPhone.</p>
          <h6 class="card-price text-center">$899</h6>
        </div>
      </div>

      <div class="card cursor-pointer m-2" style="width: 18rem; border: none">
        <img src="assets/home-page/product-iphone-11.png" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center">iPhone 11</h5>
          <p class="card-text text-center">The ultimate iPhone.</p>
          <h6 class="card-price text-center">$899</h6>
        </div>
      </div>

    </div>

  </div>

</main>

<%--iPad product lineup--%>
<main class="ipad-section">

  <video class="ipad-video" autoplay muted loop>
    <source src="assets/ipad.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>

  <div class="container mt-5">

      <h2>iPad lineup</h2>

      <div class="d-flex ipad-lineup-section">

        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-ipad-mini7.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iPad Mini 7</h5>
            <p class="card-text text-center">The ultimate iPad.</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>

        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-ipad-mini7.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iPad Mini 7</h5>
            <p class="card-text text-center">The ultimate iPad.</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>
        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-ipad-mini7.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iPad Mini 7</h5>
            <p class="card-text text-center">The ultimate iPad.</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>
        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-ipad-mini7.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iPad Mini 7</h5>
            <p class="card-text text-center">The ultimate iPad.</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>
        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-ipad-mini7.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iPad Mini 7</h5>
            <p class="card-text text-center">The ultimate iPad.</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>
        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-ipad-mini7.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iPad Mini 7</h5>
            <p class="card-text text-center">The ultimate iPad.</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>
        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-ipad-mini7.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iPad Mini 7</h5>
            <p class="card-text text-center">The ultimate iPad.</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>



      </div>
  </div>
</main>

<main class="ipad-section">

  <div class="container mt-5">

      <h2>Mac lineup</h2>

      <div class="d-flex ipad-lineup-section">

        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-imac-m4.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iMac M4 7</h5>
            <p class="card-text text-center">The ultimate iMac</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>

        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-imac-m4.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iMac M4 7</h5>
            <p class="card-text text-center">The ultimate iMac</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>

        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-imac-m4.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iMac M4 7</h5>
            <p class="card-text text-center">The ultimate iMac</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>

        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-imac-m4.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iMac M4 7</h5>
            <p class="card-text text-center">The ultimate iMac</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>

        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-imac-m4.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iMac M4 7</h5>
            <p class="card-text text-center">The ultimate iMac</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>

        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-imac-m4.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iMac M4 7</h5>
            <p class="card-text text-center">The ultimate iMac</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>

        <div class="card cursor-pointer ipad-item" style="align-items: center; width: 18rem; border: none;">
          <img src="assets/home-page/product-imac-m4.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title text-center">iMac M4 7</h5>
            <p class="card-text text-center">The ultimate iMac</p>
            <h6 class="card-price text-center">$599</h6>
          </div>
        </div>

      </div>
  </div>
</main>


<br>
<br>
<br>





<footer class="text-white pt-5 pb-3" style="background-color: #000000">

  <div class="container">

    <div class="row mb-5">
      <img src="assets/home-page/web-logo.png" style="width: 175px">
    </div>
    
    <div class="row">
      <!-- About Us Section -->
      <div class="col-md-3 mb-4">
        <h5 class="footer-title">About Us</h5>
        <p class="footer-text-color">Your trusted source for Apple products, delivering high-quality and innovative devices to elevate your lifestyle.</p>
      </div>

      <!-- Quick Links Section -->
      <div class="col-md-3 mb-4">
        <h5 class="footer-title">Quick Links</h5>
        <ul class="list-unstyled">
          <li><a href="/about" class="footer-text-color text-decoration-none">About Us</a></li>
          <li><a href="/products" class="footer-text-color text-decoration-none">Shop</a></li>
          <li><a href="/support" class="footer-text-color text-decoration-none">Support</a></li>
          <li><a href="/contact" class="footer-text-color text-decoration-none">Contact Us</a></li>
        </ul>
      </div>

      <!-- Policies Section -->
      <div class="col-md-3 mb-4">
        <h5 class="footer-title">Policies</h5>
        <ul class="list-unstyled">
          <li><a href="/privacy-policy" class="footer-text-color text-decoration-none">Privacy Policy</a></li>
          <li><a href="/terms" class="footer-text-color text-decoration-none">Terms & Conditions</a></li>
          <li><a href="/refund-policy" class="footer-text-color text-decoration-none">Refund Policy</a></li>
        </ul>
      </div>

      <!-- Contact Section -->
      <div class="col-md-3 mb-4">
        <h5 class="footer-title">Contact Us</h5>
        <p class="footer-text-color"><i class="bi bi-envelope"></i> support@rukzmobile.lk</p>
        <p class="footer-text-color"><i class="bi bi-telephone"></i> +94 76 549 8 907</p>
        <p class="footer-text-color"><i class="bi bi-geo-alt"></i> Liberty Plaza, Galle Rd, Colombo.</p>
        <div class="d-flex gap-3">
          <a href="#" class="footer-text-color"><i class="bi bi-facebook fs-4"></i></a>
          <a href="#" class="footer-text-color"><i class="bi bi-twitter fs-4"></i></a>
          <a href="#" class="footer-text-color"><i class="bi bi-instagram fs-4"></i></a>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer Bottom -->
  <div class="text-center py-2"  style="background-color: #000000">
    <p class="mb-0 footer-text-color"> copyright &copy; 2025 developed by <a style="color: #7c7c7c" href="https://kaveesha-rukshan-portfolio.vercel.app" target="_blank">Rukshan</a> | All rights reserved</p>
  </div>

</footer>



<!--Bootstrap-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>



</body>
</html>
