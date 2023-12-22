<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css"
      rel="stylesheet"
    />
<link type="text/css" rel="stylesheet" href="css/styles.css">
<link type="text/css" rel="stylesheet" href="css/styless.css">
<link type="text/css" rel="stylesheet" href="css/adminhome.css">
    <title>Add Flight | Flivan</title>
</head>
<body>
    <nav>
      <div class="nav__logo">Flivan</div>
      <ul class="nav__links">
        <li class="link"><a href="index.jsp">Home</a></li>
      </ul>
     <a href="Login"><button class="btn">Contact</button></a>
    </nav>
     <span class="blink">
<h3 align=center style="color:red" >${message}</h3>
</span> 
    <header class="section__container header__container">
      <h1 class="section__header">Add a New Flight</h1>
      <img src="/header.jpeg" alt="header" />
    </header>

    <section class="section__container booking__container">
      <div class="booking__nav">
        <span>Economy Class</span>
        <span>Business Class</span>
        <span>First Class</span>
      </div>
      <form action="addflights" method="post">
        <div class="form__group">
          <span><i class="ri-map-pin-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="text" name="source" required />
              <!-- <label>Source</label> -->
            </div>
            <p>SOURCE</p>
          </div>
        </div>
        <div class="form__group">
          <span><i class="ri-map-pin-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="text" name="destination" required />
          <!--     <label>Destination</label> -->
            </div>
            <p>Destination</p>
          </div>
        </div>
        <div class="form__group">
          <span><i class="ri-calendar-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="text" name="date" required />
           <!--    <label>Date</label> -->
            </div>
            <p>DATE</p>
          </div>
        </div>
        <div class="form__group">
          <span><i class="ri-map-pin-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="number" name="seats" required />
              <!-- <label>S</label> -->
            </div>
            <p>SEATS</p>
          </div>
        </div>
        
        <button class="btn" type="submit"><i class="ri-add-circle-line"></i> Add Flight</button>
      </form>
    </section>

    <!-- Rest of your HTML content goes here -->

    <footer class="footer">
      <div class="section__container footer__container">
        <!-- Footer content -->
      </div>
      <div class="section__container footer__bar">
        <p>Done by Team C5018</p>
        <div class="socials">
          <span><i class="ri-facebook-fill"></i></span>
          <span><i class="ri-twitter-fill"></i></span>
          <span><i class="ri-instagram-line"></i></span>
          <span><i class="ri-youtube-fill"></i></span>
        </div>
      </div>
    </footer>
</body>
</html>
