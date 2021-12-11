







<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment| Page </title>

     <!-- Google Font -->
     <link href="https://fonts.googleapis.com/css?family=Quantico:400,700&display=swap" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap" rel="stylesheet">
 
     <!-- Css Styles -->
     <link rel="stylesheet" href="css/payment.css" type="text/css"> 
</head>
<body>
     <!-- Payment Form Video: https://youtu.be/lN9B4uvqVBU -->

     <!-- Payment Form Begin -->
     <div class="container-fluid">
       <!--<div class="col-lg-6 col-md-6" > -->
        <form method = "POST" action = "paymentbck.php">
        <h1>Confirm Your Payment</h1>
        <div class="first-row">
            <div class="Client">
                <h3>Client</h3>
                <div class="input-field">
                    <input type="text" name = "client">
                </div>   
            </div>
            <div class="cvv">
                <h3>CVV</h3>
                <div class="input-field">
                    <input type="password" name ="cvv">
                </div>
                 
            </div>
        </div>
        <div class="second-row">
            
            <div class="card-umber">
                <h3>Card Number</h3>
                <div class="input-field">
                    <input type="text" name ="cardnum"> 
                    <input name="chrome-autofill-dummy1"
                     style='display:none' disabled/>
                    <input name="chrome-autofill-dummy2" 
                    style='display:none' disabled/>
                </div>
                <div class="third-row">
                        <h3>Expires</h3>
                        <div class="selection">
                            <div class="date">
                                <select name="months" id="months">
                                    <option value="Jan">Jan</option>
                                    <option value="Feb">Feb</option>
                                    <option value="Mar">Mar</option>
                                    <option value="Apr">Apr</option>
                                    <option value="May">May</option>
                                    <option value="Jun">Jun</option>
                                    <option value="Jul">Jul</option>
                                    <option value="Aug">Aug</option>
                                    <option value="Sep">Sep</option>
                                    <option value="Oct">Oct</option>
                                    <option value="Nov">Nov</option>
                                    <option value="Dec">Dec</option>
                                  </select>
                                  <select name="years" id="years">
                                    <option value="2026">2026</option>
                                    <option value="2025">2025</option>
                                    <option value="2024">2024</option>
                                    <option value="2023">2023</option>
                                    <option value="2022">2022</option>
                                    
                                  </select>

                            </div>
                            <div class="cards">
                                <img src="img/payment/mc.png" alt="">
                                <img src="img/payment/vi.png" alt="">
                                <img src="img/payment/pp.png" alt="">
                            </div>
                        </div>
            </div>
        </div><br>
        <button type="submit"name = "submit"  class="site-btn" value = "submit">Confirm Payment</button>
        <a href="services.php"  id="Goback" class="btn btn-danger btn-lg active" role="button" aria-pressed="true">Go to Service page</a>
        </div>
            </form>

           
     </div>
     
      <!-- Payment Form Ends -->

    
</body>
</html>