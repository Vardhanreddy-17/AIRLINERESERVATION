<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home | Flivan</title>
<link type="text/css" rel="stylesheet" href="css/styles.css">
<link type="text/css" rel="stylesheet" href="css/styless.css">
<link type="text/css" rel="stylesheet" href="css/adminhome.css">
</head>
<body>

<nav>
<div class="nav__logo">Flivan</div>
<ul class="nav__links">
<li class="link"><a href="adminhome.jsp">Home</a></li>
<li class="link"><a href="#">About</a></li>
<li class="link"><a href="viewallflights">BookFlights</a></li>
<li class="link"><a href="index.jsp">Logout</a></li>
<button class="btn">Contact</button>
</nav>

<header class="section__container header__container">
  <h1 class="section__header">Welcome, ${cname}</h1>
  <!-- Add any additional content or images specific to the admin home page -->
</header>
    <section class="section__container booking__container">
      <div class="booking__nav">
        <span>Economy Class</span>
        <span>Business Class</span>
        <span>First Class</span>
      </div>
      <form>
        <div class="form__group">
          <span><i class="ri-map-pin-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="text" />
              <label>Location</label>
            </div>
            <p>Where are you goung?</p>
          </div>
        </div>
        <div class="form__group">
          <span><i class="ri-user-3-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="number" />
              <label>Travellers</label>
            </div>
            <p>Add guests</p>
          </div>
        </div>
        <div class="form__group">
          <span><i class="ri-calendar-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="text" />
              <label>Departure</label>
            </div>
            <p>Add date</p>
          </div>
        </div>
        <div class="form__group">
          <span><i class="ri-calendar-line"></i></span>
          <div class="input__content">
            <div class="input__group">
              <input type="text" />
              <label>Return</label>
            </div>
            <p>Add date</p>
          </div>
        </div>
        <button class="btn"><i class="ri-search-line"></i></button>
      </form>
    </section>


    <section class="subscribe">
      <div class="section__container subscribe__container">
        <h2 class="section__header">Subscribe newsletter & get latest news</h2>
        <form class="subscribe__form">
          <input type="text" placeholder="Enter your email here" />
          <button class="btn">Subscribe</button>
        </form>
      </div>
    </section>

    <footer class="footer">
      <div class="section__container footer__container">
        <div class="footer__col">
          <h3>Flivan</h3>
          <p>
            Where Excellence Takes Flight. With a strong commitment to customer
            satisfaction and a passion for air travel, Flivan Airlines offers
            exceptional service and seamless journeys.
          </p>
          <p>
            From friendly smiles to state-of-the-art aircraft, we connect the
            world, ensuring safe, comfortable, and unforgettable experiences.
          </p>
        </div>
        <div class="footer__col">
          <h4>INFORMATION</h4>
          <p>Home</p>
          <p>About</p>
          <p>Offers</p>
          <p>Seats</p>
          <p>Destinations</p>
        </div>
        <div class="footer__col">
          <h4>CONTACT</h4>
          <p>Support</p>
          <p>Media</p>
          <p>Socials</p>
        </div>
      </div>
      <div class="section__container footer__bar">
        <p>Done by Team C5018.</p>
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
    
