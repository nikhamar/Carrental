<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" >
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<br>
<!------ Include the above in your HEAD tag ---------->

<form action="home.jsp">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">

            </div>
            <div class="col-md-12" style="margin-top: 20px;">
                <div class="pricing-table">
                    <div class="panel panel-primary" style="border: none;">
                        <div class="controle-header panel-heading panel-heading-landing">
                            <h1 class="panel-title panel-title-landing">
                                Reservation Details
                            </h1>
                        </div>
                        <div class="controle-panel-heading panel-heading panel-heading-landing-box">
                            Best Choice
                        </div>
                        <div class="panel-body panel-body-landing">
                            <table class="table">
                                <tr>
                                    <td width="50px"><i class="fa fa-check"></i></td>
                                <tr>
                                    <td>pickuploc</td>
                                    <td>${pickuploc}</td>
                                </tr>
                                <tr>
                                    <td>dropofloc</td>
                                    <td>${dropofloc}</td>
                                </tr>
                                <tr>
                                    <td>pickupday</td>
                                    <td>${pickupday}</td>
                                </tr>
                                <tr>
                                    <td>dropoffday</td>
                                    <td>${dropoffday}</td>
                                </tr>
                                <tr>
                                    <td>age</td>
                                    <td>${age}</td>
                                </tr>
                                </tr>
                                <tr>
                                    <td width="50px"><i class="fa fa-check"></i></td>
                                <tr>
                                    <td>cartype</td>
                                    <td>${cartype}</td>
                                </tr>
                                <tr>
                                    <td>carname</td>
                                    <td>${carname}</td>
                                </tr>
                                <tr>
                                    <td>caramount</td>
                                    <td>${caramount}</td>


                            </table>
                        </div>
                        <div class="panel-footer panel-footer-landing">
                            <a href="/" class="btn btn-price btn-success btn-lg">Cancel/Re-book</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>


<form action="/confirmbooking">
    <div class="container">
        <div class='row'>
            <div class='col-md-4'></div>
            <div class='col-md-4'>
                <script src='https://js.stripe.com/v2/' type='text/javascript'></script>
                <form accept-charset="UTF-8" action="/" class="require-validation" data-cc-on-file="false" data-stripe-publishable-key="pk_bQQaTxnaZlzv4FnnuZ28LFHccVSaj" id="payment-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓" /><input name="_method" type="hidden" value="PUT" /><input name="authenticity_token" type="hidden" value="qLZ9cScer7ZxqulsUWazw4x3cSEzv899SP/7ThPCOV8=" /></div>
                    <div class='form-row'>
                        <div class='col-xs-12 form-group required'>
                            <label class='control-label'>User Name</label>
                            <input class='form-control' name="userName" size='4' type='text'>
                        </div>
                    </div>
                    <div class='form-row'>
                        <div class='col-xs-12 form-group required'>
                            <label class='control-label'>Name on Card</label>
                            <input class='form-control' name="cardName" size='4' type='text'>
                        </div>
                    </div>
                    <div class='form-row'>
                        <div class='col-xs-12 form-group card required'>
                            <label class='control-label'>Card Number</label>
                            <input autocomplete='off' class='form-control card-number' name="cardNum" size='20' type='text'>
                        </div>
                    </div>
                    <div class='form-row'>
                        <div class='col-xs-4 form-group cvc required'>
                            <label class='control-label'>CVC</label>
                            <input autocomplete='off' class='form-control card-cvc' name="cvv" placeholder='ex. 311' size='4' type='text'>
                        </div>
                        <div class='col-xs-4 form-group expiration required'>
                            <label class='control-label'>Expiration</label>
                            <input class='form-control card-expiry-month' name="cardMonth" placeholder='MM' size='2' type='text'>
                        </div>
                        <div class='col-xs-4 form-group expiration required'>
                            <label class='control-label'>Year </label>
                            <input class='form-control card-expiry-year' name="cardYear" placeholder='YYYY' size='4' type='text'>
                        </div>
                    </div>
                    <div class='form-row'>

                    </div>
                    <div class='form-row'>
                        <div class='col-md-12 form-group'>
                            <button class='form-control btn btn-primary submit-button' type='submit'>Submit Payment</button>
                        </div>
                    </div>
                    <div class='form-row'>
                        <div class='col-md-12 error form-group hide'>
                            <div class='alert-danger alert'>
                                Please correct the errors and try again.
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class='col-md-4'></div>
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

                    <tr>
                        <td><input type="hidden" name="carType"   value="${cartype}"/>

                    </tr>
                    <tr>
                        <td><input type="hidden" name="caramount"   value="${caramount}"/>

                    </tr>
                </table>

            </div>
        </div>
    </div>
</form>
<br>
</body>
</html>