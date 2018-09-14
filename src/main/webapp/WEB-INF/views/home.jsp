<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
        <a class="active" href="/">Home</a>
        <a href="/Login">Login</a>
        <a href="/Registration">Sign Up</a>
    </div>
</div>

<form action="/traveldetails" >

    <div class="container">
        <label><b>pickuploction</b></label>
        <input type="text" placeholder="choose location" name="pickuplocation" required>
        <label><b>dropoffloction</b></label>
        <input type="text" placeholder="choose location" name="dropofflocation" required>
        <label><b>pickup date</b></label>
        <input type="text" placeholder="DD MM YYYY" name="pickupDate" required>
        <label><b>dropoff date</b></label>
        <input type="text" placeholder="DD MM YYYY" name="dropOffDate" required>

        <label><b>Age </b></label>
        <input type="number" placeholder="enter age" name="age" required>
        <button type="submit">Search Now</button>
    </div>
</form>
</body>
</html>