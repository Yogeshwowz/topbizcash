<!-- footer --><section class="footer py-5">   <div class="container">      <div class="row">         <div class="col-md-4 footer-box" id="katuhu">            <div id="custom_html-2" class="widget_text widget widget_custom_html">               <div class="textwidget custom-html-widget">                  <a href="<?php echo base_url();?>" style="color:#fff;"><img src="<?php echo base_url();?>assets/img/logo1.png" alt="logo"></a>                  <div class="social mt-4">                     <ul>                        <li>Follow us :</li>                        <li><i class="fa fa-facebook" aria-hidden="true"></i></li>                        <li><i class="fa fa-twitter" aria-hidden="true"></i></li>                        <li><i class="fa fa-linkedin" aria-hidden="true"></i></li>                        <li><i class="fa fa-instagram" aria-hidden="true"></i></li>                     </ul>                  </div>               </div>            </div>         </div>         <!-- 2 -->         <div class="col-md-4 footer-box text-white" id="katuhu1">            <div id="custom_html-3" class="widget_text widget widget_custom_html">               <div class="textwidget custom-html-widget">                  <h3>QUICK LINKS</h3>                  <ul class="linkss">                     <li><a href="#">About Us</a></li>                     <li><a href="#">Services</a></li>                     <li><a href="#">Features</a></li>                     <li><a href="#">Our Pricing</a></li>                     <li><a href="#">Latest News</a></li>                  </ul>               </div>            </div>         </div>         <!-- 3 -->         <div class="col-md-4 footer-box text-white" id="katuhu2">            <div id="custom_html-4" class="widget_text widget widget_custom_html">               <div class="textwidget custom-html-widget">                  <h3>SUPPORT</h3>                  <ul class="linkss">                     <li><a href="<?php echo base_url()?>faq">FAQ's</a></li>                     <li><a href="#">Privacy Policy</a></li>                     <li><a href="#">Terms &amp; Condition</a></li>                     <li><a href="#">Community</a></li>                     <li><a href="<?php echo base_url()?>contact-us">Contact Us</a></li>                  </ul>               </div>            </div>         </div>      </div>   </div></section><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script><script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script><!----------- Loading ---------------><link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/plugins/loading/loading.css"><script src="<?php echo base_url();?>assets/plugins/loading/loading.js"></script><script>$(document).ready(function(){var baseURL = $('#baseURL').val();$( "#contactForm" ).submit(function( event ){ //on form submit      var proceed = true;		$("#contactForm input[required=true],#contactForm radio[required=true],#contactForm textarea[required=true]").each(function(){		$(this).css('border-color',''); 		if(!$.trim($(this).val())){ //if this field is empty 			$(this).css('border-color','#dc3545'); //change border color to red   				proceed = false; //set do not proceed flag				$(this).focus();                }                //check invalid email				var email_reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,3})?$/; 				if($(this).attr("type")=="email" && !email_reg.test($.trim($(this).val()))){					$(this).css('border-color','#dc3545'); //change border color to red  						proceed = false; //set do not proceed flag                            }				if ($("input[name='agreeTerms']").is(':checked')) {}else{					$("input[name='agreeTerms']").css('outline','#dc3545');					$("#error-checkbox").show();						proceed = false;				}			});			if(proceed){				H5_loading.show();				var formData = $("#contactForm").serialize();			$.ajax({				type: "POST",				url: baseURL+'home/contactForm',				data: {					formdata : formData				},				success: function(msgData) {				H5_loading.hide();					if(msgData==2){					    $('#first_name,#last_name,#cemail,#phone,#message').val('');						$('#success-email').show();					}				}				});		}		return false;		event.preventDefault();		});			$("#contactForm input[required=true]").keyup(function() { 		$(this).css('border-color',''); 	});		$('#agreeTerms').on('click', function () {	if($(this).prop("checked") == true){			$("#error-checkbox").hide();        }    });   $( "#contactForm1" ).submit(function( event ){ //on form submit               var proceed = true;              $("#contactForm1 input[required],#contactForm1 textarea[required] ").each(function(){                $(this).css('border-color','');                 if(!$.trim($(this).val())){ //if this field is empty                     $(this).css('border-color','#dc3545'); //change border color to red                  proceed = false; //set do not proceed flag               $(this).focus();                }                //check invalid email                var email_reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;                 if($(this).attr("type")=="email" && !email_reg.test($.trim($(this).val()))){                    $(this).css('border-color','#dc3545'); //change border color to red                 proceed = false; //set do not proceed flag                            }                    });                if(proceed){         H5_loading.show();         var formData = $("#contactForm1").serialize();         $.ajax({            type: "POST",            url: baseURL+'home/contactForm',            data: {               formdata : formData            },            success: function(msgData) {               H5_loading.hide();               if(msgData==2){                  $('#contact-id').show();                  $('#contactForm1 input[type="text"],#contactForm1 input[type="email"],#contactForm1 textarea').val('');               }                        }         });                    }       return false;      event.preventDefault();          });        $("#contactForm1 input[required]").keyup(function() {         $(this).css('border-color','');    });      			});	</script></body></html>