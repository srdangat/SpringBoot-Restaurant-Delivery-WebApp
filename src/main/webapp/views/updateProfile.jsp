<!doctype html>
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
    <title>Document</title>
    <style>
        .avatar-container {
            margin-right: 100px;
            margin-left: auto;
        }

        .avatar {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            object-fit: cover;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        input[type="text"] {
            min-width:  500px;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"> <img
                    src="https://www.go-globe.com/wp-content/uploads/2024/01/big_thumb_online_food_ordering.png"
                    width="auto" height="40" class="d-inline-block align-top" alt="" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto"></ul>
                <ul class="navbar-nav
                ">
                    <li class="nav-item active"><a class="nav-link" href="/userhome">Home Page</a></li>
                    <li class="nav-item active"><a class="nav-link" href="/logout">Logout</a></li>
                </ul>

            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
          <div class="col-12">
            <h3 style="margin-top: 10px">User Profile</h3>
            <div style="display: flex; align-items: center;">
                <form action="updateuser" method="post">
                    <div class="form-group">
                        <label for="firstName">User Name</label>
                        <input type="hidden" name="userid" value="${userid }">
                        <input type="text" name="username" id="firstName" required placeholder="Your Username*"
                            value="${username }" required class="form-control form-control-lg">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control form-control-lg" required minlength="6"
                            placeholder="Email*" value="${email }" required name="email" id="email"
                            aria-describedby="emailHelp">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                            anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control form-control-lg" required placeholder="Password*"
                            value="${password }" required name="password" id="password"
                            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[~`!@#$%\^&*()\-_=+[\]{};:\x27.,\x22\\|/?><]).{8,}"
                            title="Must contain: at least one number, one uppercase letter, one lowercase letter,
                       one special character, and 8 or more characters" required>
                        <input type="checkbox" onclick="showPassword()">Show Password
                    </div>
                    <div class="form-group">
                        <label for="Address">Address</label>
                        <textarea class="form-control form-control-lg" rows="3" placeholder="Enter Your Address"
                            name="address">${address }</textarea>
                    </div>

                    <input type="submit" value="Update Profile" class="btn btn-primary btn-block"><br>

                </form>
                <div class="avatar-container">
                    <img src="https://source.unsplash.com/random/200x200/?avatar" alt="Avatar" class="avatar">
                </div>
            </div>
        </div>
        </div>
    </div>

    <script>
        function showPassword() {
            var x = document.getElementById("password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

</html>