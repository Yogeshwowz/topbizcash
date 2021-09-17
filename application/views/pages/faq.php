<!DOCTYPE html>
    <title>Top-Wiz-Cash</title>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
       

        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/faq/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <header>
        </header>
        <section class = "FAQ-Banner">
            <div class = "container">
                <div class = "Banner-Heading">
                    <h1 class = "heading-title">FAQs</h1>
                    <h6>frequently asked questions</h6>
                    <p class = "faq-text">
                        Here are some common questions about top-wiz-cash
                    </p>
                </div>
            </div>
        </section>
        <section class="faq-container">
          <?php foreach($faq as $value){?>
            <div class="faq-three">
                <!-- faq question -->
                <h1 class="faq-page"><?php echo $value->title?></h1>
                <!-- faq answer -->
                <div class="faq-body">
                    <?php echo $value->description;?>
                </div>
            </div>
            <hr class="hr-line">
          <?php } ?>
  
        </section>
        <footer class = "top-wiz-footer">
            <div class="container">
                <div class="row">
                   <div class="col-md-4 footer-box" id="katuhu">
                      <div id="custom_html-2" class="widget_text widget widget_custom_html">
                         <div class="textwidget custom-html-widget">
                            <a href="<?php echo base_url();?>" style="color:#fff;"><img src="<?php echo base_url();?>assets/img/logo1.png" alt="logo"></a>
                            <div class="social mt-4">
                               <ul>
                                  <li>Follow us :</li>
                                  <li><i class="fa fa-facebook" aria-hidden="true"></i></li>
                                  <li><i class="fa fa-twitter" aria-hidden="true"></i></li>
                                  <li><i class="fa fa-linkedin" aria-hidden="true"></i></li>
                                  <li><i class="fa fa-instagram" aria-hidden="true"></i></li>
                               </ul>
                            </div>
                         </div>
                      </div>
                   </div>
                   <!-- 2 -->
                   <div class="col-md-4 footer-box text-white" id="katuhu1">
                      <div id="custom_html-3" class="widget_text widget widget_custom_html">
                         <div class="textwidget custom-html-widget">
                            <h3>QUICK LINKS</h3>
                            <ul class="linkss">
                               <li><a href="#">About Us</a></li>
                               <li><a href="#">Services</a></li>
                               <li><a href="#">Features</a></li>
                               <li><a href="#">Our Pricing</a></li>
                               <li><a href="#">Latest News</a></li>
                            </ul>
                         </div>
                      </div>
                   </div>
                   <!-- 3 -->
                   <div class="col-md-4 footer-box text-white" id="katuhu2">
                      <div id="custom_html-4" class="widget_text widget widget_custom_html">
                         <div class="textwidget custom-html-widget">
                            <h3>SUPPORT</h3>
                            <ul class="linkss">
                               <li><a href="<?php echo base_url();?>faq">FAQ's</a></li>
                               <li><a href="#">Privacy Policy</a></li>
                               <li><a href="#">Terms &amp; Condition</a></li>
                               <li><a href="#">Community</a></li>
                               <li><a href="<?php echo base_url();?>/contact-us">Contact Us</a></li>
                            </ul>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
        </footer>
       
        <script src="<?php echo base_url();?>assets/js/main.js"></script>
    </body>
</html>