<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <title>Document</title>
<style>
/* Header Styles */
.bg-image {
    background-image: url('https://wallpapers.com/images/featured/restaurant-background-2ez77umko2vj5w02.jpg');
    background-size: cover;
    background-position: center;
    height: 100vh;

}

.overlay {
    background-color: rgba(0, 0, 0, 0.5);
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
     background-image: url('https://wallpapers.com/images/featured/restaurant-background-2ez77umko2vj5w02.jpg');
}

h2 {
    margin-top: 10%;
    font-size: 4rem;
    color: #fff;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    margin-bottom: 2rem;
    background-color: black;
    padding: 20px;
    opacity: 80%;
}

/* Form Styles */
.form-container {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 2rem;
    border-radius: 0.5rem;
    max-width: 600px;
    margin: 0 auto;
}

.form-group {
    margin-bottom: 1.5rem;
}

label {
    font-weight: bold;
}

.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
    font-weight: bold;
    padding: 0.5rem 1.5rem;
}

.btn-primary:hover {
    background-color: #0069d9;
    border-color: #0062cc;
}</style>
</head>


<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img th:src="@{/images/logo.png}" src="https://www.go-globe.com/wp-content/uploads/2024/01/big_thumb_online_food_ordering.png" width="auto" height="40" class="d-inline-block align-top" alt=""/>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <h4 class="text-light">Welcome ${ username }</h4>
            <ul class="navbar-nav mr-auto"></ul>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/}" href="#">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/shop}" href="#">Shop</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" sec:authorize="isAuthenticated()" href="logout">Logout</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/cart}" href="#">Cart</a>
                </li>
                <li class="nav-item active">
                    <span class="nav-link" th:text="${cartCount}">0</span>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="profileDisplay">Profile</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header class="bg-image">
    <div class="overlay">
        <div class="container">
            <center><h2>Supplier Form</h2></center>
            <form action="https://formcarry.com/s/Pq3xf4Lbabh" method="POST" class="form-container">
                <div class="form-group">
                    <label for="productName">Product Name:</label>
                    <input type="text" class="form-control" id="productName" name="product Name" required>
                </div>
                <div class="form-group">
                    <label for="contactNumber">Contact Number:</label>
                    <input type="text" class="form-control" id="contactNumber" name="Number" maxlength="10" required>
                </div>
                <div class="form-group">
                    <label for="email">Email ID:</label>
                    <input type="email" class="form-control" id="email" name="Email" required>
                </div>
                <div class="form-group">
                    <label for="category">Category:</label>
                    <input type="text" class="form-control" id="category" name="category" required>
                </div>
                <div class="form-group">
                    <label for="description">Description:</label>
                    <textarea class="form-control" id="description" name="Message" rows="4" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
            </form>
        </div>
    </div>
</header>
</body>
</html>