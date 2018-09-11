<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <style>
        * {box-sizing: border-box;}
    </style>
</head>
<body>
<div class="header">
    <a href="#default" class="logo">Car Rental</a>
    <div class="header-right">
        <a class="active" href="#home">Home</a>
        <a href="#login">Login</a>
        <a href="#sign-up">Sign Up</a>
    </div>
</div>

<form action="/action_page.php">

    <div class="container">
        <label for="loction"></label>
        <input type="text" placeholder="choose location" name="location" required>
        <label for="pickup"><b>pickup date</b></label>
        <input type="date" placeholder="DD MM YYYY" name="pickupdate" required>
        <label for="dropoff"><b>dropoff date</b></label>
        <input type="date" placeholder="DD MM YYYY" name="dropoffdate" required>

        <label for="age"><b>Age </b></label>
        <input type="number" placeholder="enter age" name="age" required>
        <button type="submit">Search Now</button>
    </div>
</form>
</body>
</html>