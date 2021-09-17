<?php $url= explode('/',$_SERVER['REQUEST_URI']);?>
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
  <link href="<?php echo base_url();?>assets/admin/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <style></style>
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar">
      <div class="logo">
        <a href="<?php echo base_url();?>administrator/dashboard" class="simple-text logo-mini">
          <img src="<?php echo base_url();?>assets/admin/img/logo.png" alt="">
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li class="<?php if(in_array('dashboard',$url)) { echo "active";}?>">
            <a href="<?php echo base_url();?>administrator/dashboard">
              <i class="fab fa-dashcube"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="<?php if(in_array('users',$url) || in_array('user-details',$url)) { echo "active";}?>">
            <a href="<?php echo base_url();?>administrator/users">
              <i class="fas fa-user-edit"></i>
              <p>Users</p>
            </a>
          </li>
          <li class="<?php if(in_array('faq',$url) || in_array('edit-faq',$url)) { echo "active";}?>">
            <a href="<?php echo base_url();?>administrator/faq">
              <i class="fas fa-user-edit"></i>
              <p>Manage Faq</p>
            </a>
          </li>
           <li class="<?php if(in_array('create-faq',$url) ) { echo "active";}?>">
            <a href="<?php echo base_url();?>administrator/create-faq">
              <i class="fas fa-user-edit"></i>
              <p>Create Faq</p>
            </a>
          </li>
          <li class="<?php if(in_array('contact-us',$url) ) { echo "active";}?>">
            <a href="<?php echo base_url();?>administrator/contact-us">
              <i class="fas fa-user-edit"></i>
              <p>Contact </p>
            </a>
          </li>
          <li>
            <a href="<?php echo base_url();?>administrator/logout">
              <i class="fas fa-sign-out-alt"></i>
              <p>Logout</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">Ozark Consulting Admin Panel</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link d-flex align-items-center" href="#pablo">
                  <h1 class="m-0 pr-2"><i class="far fa-user-circle"></i></h1>
                  <p>
                    <span>Admin</span>
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-sm">
      </div>
	  <input type="hidden" name="baseUrl" id="baseUrl" value="<?php echo base_url();?>" >