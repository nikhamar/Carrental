<!DOCTYPE html>
<html>
<title>W3.CSS</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<body>
<br>
<div class="w3-container" >

    <h2>travel details</h2>
    <table>
        <tr>
            <td><input type="hidden" name="pickuplocation"   value="${pickuploc}"> <b>Pickup Location: ${pickuploc}</b></td>
        </tr>
        <tr>
            <td><input type="hidden" name="dropofflocation"   value="${dropofloc}"> <b>Dropoff Location: ${dropofloc}</b></td>

        </tr>
        <tr>
            <td><input type="hidden" name="pickupDate"   value="${pickupday}"> <b>Pickup Date: ${pickupday}</b></td>

        </tr>
        <tr>
            <td><input type="hidden" name="dropOffDate"   value="${dropoffday}"><b> Droff Date: ${dropoffday}</b></td>

        </tr>
        <tr>
            <td><input type="hidden" name="age"   value="${age}"> <b>Age: ${age}</b></td>

        </tr>

    </table>

</div>

<div class="w3-row-padding">

    <c:forEach var="carinfo" items="${carinfoArray}">

        <form action="/paymentinfo"  >


    <div class="w3-third w3-margin-bottom">

        <ul class="w3-ul w3-border w3-center w3-hover-shadow">

            <li class="w3-black w3-large w3-padding-40">Basic</li>

            <li class="w3-padding-8"><input type="hidden" name="carType"   value="${carinfo.getCarType()}"> <b> Car Type:  ${carinfo.getCarType()}</b></li>
            <li class="w3-padding-8"><input type="hidden" name="carName"   value="${carinfo.getCarName()}"> <b>Car Name: ${carinfo.getCarName()}  </b></li>
            <li class="w3-padding-8"><input type="hidden" name="passengerCap"   value="${carinfo.getPassengerCap()}"><b>Passenger Capacity: ${carinfo.getPassengerCap()} </b></li>
            <li class="w3-padding-8"><input type="hidden" name="gearType"   value="${carinfo.getGearType()}" ><b>Gear Type:  ${carinfo.getGearType()}  </b></li>
            <h2 class="w3-padding-8"><input type="hidden" name="caramount"   value="${carinfo.getCaramount()}"><b> Car Amount: ${carinfo.getCaramount()}</b></h2>
            <span class="w3-opacity">per day</span>
            </li>
            <li class="w3-light-grey w3-padding-30">

                <button class="w3-button w3-green w3-padding-large">BOOK NOW</button>
            </li>
        </ul>

    </div>
            <div>
            <table>
                <tr>
                    <td><input type="hidden" name="pickuplocation"   value="${pickuploc}"/>
                </tr>
                <tr>
                    <td><input type="hidden" name="dropofflocation"   value="${dropofloc}"/>

                </tr>
                <tr>
                    <td><input type="hidden" name="pickupDate"   value="${pickupday}"/>

                </tr>
                <tr>
                    <td><input type="hidden" name="dropOffDate"   value="${dropoffday}"/>

                </tr>
                <tr>
                    <td><input type="hidden" name="age"   value="${age}"/>

                </tr>

            </table>

            </div>


        <%--<div class="w3-third w3-margin-bottom">--%>
        <%--<ul class="w3-ul w3-border w3-center w3-hover-shadow">--%>
            <%--<li class="w3-black w3-large w3-padding-40">Basic</li>--%>
            <%--<li class="w3-padding-8"><b>Economy</b></li>--%>
            <%--<li class="w3-padding-8"><b> Vehicel </b></li>--%>
            <%--<li class="w3-padding-8"><b>Passenger capacity</b>--%>
            <%--</li>--%>
            <%--<h2 class="w3-padding-8">carmount=$ 10</h2>--%>
            <%--<span class="w3-opacity">per day</span>--%>
            <%--</li>--%>
            <%--<li class="w3-light-grey w3-padding-30">--%>
                <%--<button class="w3-button w3-green w3-padding-large">BOOK NOW</button>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>



    <%--<div class="w3-third w3-margin-bottom">--%>
        <%--<ul class="w3-ul w3-border w3-center w3-hover-shadow">--%>
            <%--<li class="w3-black w3-large w3-padding-40">Basic</li>--%>
            <%--<li class="w3-padding-8"><b>Economy</b></li>--%>
            <%--<li class="w3-padding-8"><b> Vehicel </b></li>--%>
            <%--<li class="w3-padding-8"><b>Passenger capacity</b>--%>
            <%--</li>--%>
            <%--<h2 class="w3-padding-8">carmount=$ 10</h2>--%>
            <%--<span class="w3-opacity">per day</span>--%>
            <%--</li>--%>
            <%--<li class="w3-light-grey w3-padding-30">--%>
                <%--<button class="w3-button w3-green w3-padding-large">BOOK NOW</button>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>



    <%--<div class="w3-third w3-margin-bottom">--%>
        <%--<ul class="w3-ul w3-border w3-center w3-hover-shadow">--%>
            <%--<li class="w3-black w3-large w3-padding-40">Basic</li>--%>
            <%--<li class="w3-padding-8"><b>Economy</b></li>--%>
            <%--<li class="w3-padding-8"><b> Vehicel </b></li>--%>
            <%--<li class="w3-padding-8"><b>Passenger capacity</b>--%>
            <%--</li>--%>
            <%--<h2 class="w3-padding-8">carmount=$ 10</h2>--%>
            <%--<span class="w3-opacity">per day</span>--%>
            <%--</li>--%>
            <%--<li class="w3-light-grey w3-padding-30">--%>
                <%--<button class="w3-button w3-green w3-padding-large">BOOK NOW</button>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>



    <%--<div class="w3-third w3-margin-bottom">--%>
        <%--<ul class="w3-ul w3-border w3-center w3-hover-shadow">--%>
            <%--<li class="w3-black w3-large w3-padding-40">Basic</li>--%>
            <%--<li class="w3-padding-8"><b>Economy</b></li>--%>
            <%--<li class="w3-padding-8"><b> Vehicel </b></li>--%>
            <%--<li class="w3-padding-8"><b>Passenger capacity</b>--%>
            <%--</li>--%>
            <%--<h2 class="w3-padding-8">carmount=$ 10</h2>--%>
            <%--<span class="w3-opacity">per day</span>--%>
            <%--</li>--%>
            <%--<li class="w3-light-grey w3-padding-30">--%>
                <%--<button class="w3-button w3-green w3-padding-large">BOOK NOW</button>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>



    <%--<div class="w3-third w3-margin-bottom">--%>
        <%--<ul class="w3-ul w3-border w3-center w3-hover-shadow">--%>
            <%--<li class="w3-black w3-large w3-padding-40">Basic</li>--%>
            <%--<li class="w3-padding-8"><b>Economy</b></li>--%>
            <%--<li class="w3-padding-8"><b> Vehicel </b></li>--%>
            <%--<li class="w3-padding-8"><b>Passenger capacity</b>--%>
            <%--</li>--%>
            <%--<h2 class="w3-padding-8">carmount=$ 10</h2>--%>
            <%--<span class="w3-opacity">per day</span>--%>
            <%--</li>--%>
            <%--<li class="w3-light-grey w3-padding-30">--%>
                <%--<button class="w3-button w3-green w3-padding-large">BOOK NOW</button>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>
        </form>
    </c:forEach>
</div>

</div>

</body>
</html>
