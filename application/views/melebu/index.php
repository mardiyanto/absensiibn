<?php $query = $this->db->get('profil');
     $this->db->where('id_profil',1); 
     $row = $query->row(); ?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title><?php echo"$row->tentang"; ?></title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="<?php echo base_url() ?>/tema/css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="<?php echo base_url() ?>/tema/css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="<?php echo base_url() ?>/tema/css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="<?php echo base_url() ?>/tema/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="<?php echo base_url() ?>/tema/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->

      
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
            <div class="container">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                           <div class="logo">
                              <a href="index.html"><img src="<?php echo base_url() ?>/tema/images/logo.png" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item">
                                 <a class="nav-link" href="#">About </a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="#">Screenshort</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="#">Contact</a>
                              </li>
                           </ul>
                           <div class="Call"><a href="#"> <span class="yellow">Hubungi Kami : </span><?php echo"$row->no_hp"; ?></a></div>
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!-- end header inner -->
      <!-- end header -->
      <!-- banner -->
      <section class="banner_main">
         <div class="container">
         <div class="row d_flex">
            <div class="col-md-6">
               <div class="text-bg">
                  <h1><?php echo"$row->nama_instansi"; ?></h1>
                  <p><?php echo"$row->tentang"; ?></p>
                  <a class="read_more" href="loginkaryawan/login.php">ABSEN</a>
               </div>
            </div>
            <div class="col-md-6">
               <form id="request" class="main_form" method="POST" action="">
                  <div class="row">
                     <div class="col-md-12 ">
                        <input class="contactus" name="name" placeholder="NAMA LENGKAP" type="type" > 
                     </div>
                     <div class="col-md-12 ">
                        <input class="contactus" name="id_karyawan" placeholder="NIND" type="type" > 
                     </div>
                     <div class="col-sm-12">
                        <button class="send_btn">DAFTAR</button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </section>
      <!-- end banner -->

      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <p>Copyright 2023 <?php echo"$row->nama_instansi"; ?> <a href="https://ibnus.ac.id/"> <?php echo"$row->alias"; ?></a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="<?php echo base_url() ?>/tema/js/jquery.min.js"></script>
      <script src="<?php echo base_url() ?>/tema/js/popper.min.js"></script>
      <script src="<?php echo base_url() ?>/tema/js/bootstrap.bundle.min.js"></script>
      <script src="<?php echo base_url() ?>/tema/js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="<?php echo base_url() ?>/tema/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="<?php echo base_url() ?>/tema/custom.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
   </body>
</html>