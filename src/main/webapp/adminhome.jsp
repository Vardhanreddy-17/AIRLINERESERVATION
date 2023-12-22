<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
<li class="link"><a href="addflights.jsp">AddFlights</a></li>
      <a href="admin"><button class="btn">Logout</button></a>
</nav>


<header class="section__container header__container">
  <h1 class="section__header">Welcome, Admin!</h1>
  <!-- Add any additional content or images specific to the admin home page -->
</header>
      <img src="images/header.jpg" alt="header" />
    </header>
    <script>
  fetch('count-flights')
  .then(response => response.json())
  .then(data => {
      const flightCount = data.fcount;
      const seatSum = data.seats;

      const ctx = document.getElementById('customerPieChart').getContext('2d');
      new Chart(ctx, {
          type: 'polarArea',
          data: {
              labels: ['Flights', 'Seats'],
              datasets: [{
                  label: 'No of Flights vs Sum of Seats',
                  data: [flightCount, seatSum], // Use an array for data
                  backgroundColor: ['rgba(54, 162, 235, 0.5)', 'rgba(255, 99, 132, 0.5)'], // Adjust the colors here
                  borderColor: ['rgba(54, 162, 235, 1)', 'rgba(255, 99, 132, 1)'], // Adjust the colors here
                  borderWidth: 3
              }]
          },
          options: {
              responsive: true, // Set to true to make it responsive
              maintainAspectRatio: false, // Set to false to control dimensions with width and height
              width: 200, // Set the width of the chart
              height: 200 // Set the height of the chart
          }
      });
  });
    </script>
    
    <div class="customer-piechart">
    <h1>Number of Flights vs Sum of Seats</h1>
    <div class="count">
        <canvas id="customerPieChart" width="200" height="200"></canvas>
    </div>
</div>

    
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
        <p>Done by Team C5018</p>
        <div class="socials">
          <span><i class="ri-facebook-fill"></i></span>
          <span><i class="ri-twitter-fill"></i></span>
          <span><i class="ri-instagram-line"></i></span>
          <span><i class="ri-youtube-fill"></i></span>
        </div>
      </div>
    </footer>
