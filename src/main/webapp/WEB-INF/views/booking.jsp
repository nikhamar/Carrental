<!DOCTYPE html>
<html>
<head>
    <title>Basic Web Page</title>
</head>
<h1>Hello World!</h1>
<body>
<form action="/">

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
                                <td>username</td>
                                <td>${username}</td>

                                </tr>
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
                            <a href="/" class="btn btn-price btn-success btn-lg">HOME</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</form>



</body>
</html>