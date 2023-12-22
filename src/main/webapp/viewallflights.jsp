<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %> -->
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/viewallflights.css">
    <title>Flight Schedule</title>
</head>
<body>
    <nav>
      <div class="nav__logo">Flivan</div>
      <ul class="nav__links">
        <li class="link"><a href="customerhome">Home</a></li>
        <li class="link"><a href="about.jsp">About</a></li>
      </ul>
      <button class="btn">Contact</button>
    </nav>

    <section class="section__container flight-schedule__container">
        <h1 class="section__header">Flight Schedule</h1>
        <table class="flight-table" align="center" border="8">
            <thead>
                <tr>
                    <td>Source</td>
                    <td>Destination</td>
                    <td>Date</td>
                    <td>BookFlight</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${flightlist}"  var="flight"> 
             <tr> 
              <td><c:out value="${flight.source}" /></td> 
              <td><c:out value="${flight.destination}" /></td> 
              <td><c:out value="${flight.date}" /></td> 
             <td>
                <a href='Booktickets.jsp'>BookFlight</a> 
             </td>
 
             </tr> 
                </c:forEach> 
            </tbody>
        </table>
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
        <p>Done by TEAM-18</p>
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
