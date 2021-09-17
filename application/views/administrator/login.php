
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   Topbizcash Admin Panel
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
  <!-- CSS Files -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link href="<?php echo base_url(); ?>assets/admin/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
</head>
<body class="">
  <div class="login-page">
    <div class="fix-logo"><img src="https://oxeenit.com/ozark-consulting/assets/img/logo1.png" alt=""></div>
    <div class="fix-bg"></div>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
      <path fill="#07116f" fill-opacity="1" d="M0,160L6.2,133.3C12.3,107,25,53,37,69.3C49.2,85,62,171,74,202.7C86.2,235,98,213,111,181.3C123.1,149,135,107,148,106.7C160,107,172,149,185,149.3C196.9,149,209,107,222,122.7C233.8,139,246,213,258,250.7C270.8,288,283,288,295,245.3C307.7,203,320,117,332,69.3C344.6,21,357,11,369,10.7C381.5,11,394,21,406,26.7C418.5,32,431,32,443,26.7C455.4,21,468,11,480,21.3C492.3,32,505,64,517,101.3C529.2,139,542,181,554,202.7C566.2,224,578,224,591,197.3C603.1,171,615,117,628,106.7C640,96,652,128,665,117.3C676.9,107,689,53,702,32C713.8,11,726,21,738,69.3C750.8,117,763,203,775,240C787.7,277,800,267,812,250.7C824.6,235,837,213,849,202.7C861.5,192,874,192,886,186.7C898.5,181,911,171,923,181.3C935.4,192,948,224,960,224C972.3,224,985,192,997,176C1009.2,160,1022,160,1034,176C1046.2,192,1058,224,1071,197.3C1083.1,171,1095,85,1108,64C1120,43,1132,85,1145,128C1156.9,171,1169,213,1182,218.7C1193.8,224,1206,192,1218,160C1230.8,128,1243,96,1255,117.3C1267.7,139,1280,213,1292,229.3C1304.6,245,1317,203,1329,208C1341.5,213,1354,267,1366,288C1378.5,309,1391,299,1403,288C1415.4,277,1428,267,1434,261.3L1440,256L1440,0L1433.8,0C1427.7,0,1415,0,1403,0C1390.8,0,1378,0,1366,0C1353.8,0,1342,0,1329,0C1316.9,0,1305,0,1292,0C1280,0,1268,0,1255,0C1243.1,0,1231,0,1218,0C1206.2,0,1194,0,1182,0C1169.2,0,1157,0,1145,0C1132.3,0,1120,0,1108,0C1095.4,0,1083,0,1071,0C1058.5,0,1046,0,1034,0C1021.5,0,1009,0,997,0C984.6,0,972,0,960,0C947.7,0,935,0,923,0C910.8,0,898,0,886,0C873.8,0,862,0,849,0C836.9,0,825,0,812,0C800,0,788,0,775,0C763.1,0,751,0,738,0C726.2,0,714,0,702,0C689.2,0,677,0,665,0C652.3,0,640,0,628,0C615.4,0,603,0,591,0C578.5,0,566,0,554,0C541.5,0,529,0,517,0C504.6,0,492,0,480,0C467.7,0,455,0,443,0C430.8,0,418,0,406,0C393.8,0,382,0,369,0C356.9,0,345,0,332,0C320,0,308,0,295,0C283.1,0,271,0,258,0C246.2,0,234,0,222,0C209.2,0,197,0,185,0C172.3,0,160,0,148,0C135.4,0,123,0,111,0C98.5,0,86,0,74,0C61.5,0,49,0,37,0C24.6,0,12,0,6,0L0,0Z"></path>
    </svg>
	
	<div id="formContent" class="py-4">      
      <!-- Tabs Titles -->
        <h1 class="mb-2"><i class="fas fa-user"></i></h1>  
        <h4 class="mt-2">Ozark Consulting Admin Login</h4>
      <!-- Login Form -->
        <?php $this->load->helper('form'); ?>
        <div class="row">
            <div class="col-md-12">
                <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
            </div>
        </div>
        <?php
        $this->load->helper('form');
        $error = $this->session->flashdata('error');
        if($error)
        {
            ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $error; ?>                    
            </div>
        <?php }
        $success = $this->session->flashdata('success');
        if($success)
        {
            ?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $success; ?>                    
            </div>
        <?php } ?>
        <form action="<?php echo base_url(); ?>administrator" method="post">
				<input  id="login" type="text"  placeholder="Email" name="email" required />
				<input  id="password" type="text"  placeholder="Password" name="password" required />
				<input type="submit" class="main_btn main-bg" value="Sign In"  name="SignIn"/>
            
         
        </form>

       
      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->


	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="<?php echo base_url(); ?>assets/admin/js/perfect-scrollbar.jquery.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/admin/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
  </body>
</html>