$(document).ready(function(){
	var baseURL = $('#baseURL').val();

$( "#registerForm" ).submit(function( event ){ //on form submit       
        var proceed = true;
		$("#registerForm input[required=true],#registerForm radio[required=true],#registerForm select[required=true]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
					$(this).focus();
                }
                //check invalid email
                var email_reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,3})?$/; 
                if($(this).attr("type")=="email" && !email_reg.test($.trim($(this).val()))){
                    $(this).css('border-color','#dc3545'); //change border color to red  
					proceed = false; //set do not proceed flag            
                }
				var pass = $('#password').val();
				var password_confirm= $('#password-confirm').val();
				if(pass!=password_confirm){
					$("#error-new-password").show();
					 proceed = false;
				}
				if ($("input[name='agreeTerms']").is(':checked')) {}else{
					$("input[name='agreeTerms']").css('outline','#dc3545');
					$("#error-checkbox").show();
					 proceed = false;
				}
				
        });
		
          if(proceed){
			H5_loading.show();
			var formData = $("#registerForm").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/userRegistration',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#error-email').show();
						
					}else{
						window.location.href=baseURL+"loan-application-process-form";
						return false;
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    });		
	$("#registerForm input[required=true]").keyup(function() { 
        $(this).css('border-color',''); 
	});	
	
	$( "#registerFormId" ).submit(function( event ){ //on form submit       
        var proceed = true;
		$("#registerFormId input[required=true],#registerFormId radio[required=true],#registerFormId select[required=true]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
					$(this).focus();
                }
                //check invalid email
                var email_reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/; 
                if($(this).attr("type")=="email" && !email_reg.test($.trim($(this).val()))){
                    $(this).css('border-color','#dc3545'); //change border color to red  
					proceed = false; //set do not proceed flag            
                }
				var pass = $('#password').val();
				var password_confirm= $('#password-confirm').val();
				if(pass!=password_confirm){
					$("#error-new-password").show();
					 proceed = false;
				}
				if ($("input[name='agreeTerms']").is(':checked')) {}else{
					$("input[name='agreeTerms']").css('outline','#dc3545');
					$("#error-checkbox").show();
					 proceed = false;
				}
				
        });
		
          if(proceed){
			H5_loading.show();
			var formData = $("#registerFormId").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/userRegistration',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#error-email').show();
						
					}else{
						window.location.href=baseURL+"organizationinformation";
						return false;
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    });		
	$("#registerFormId input[required=true]").keyup(function() { 
        $(this).css('border-color',''); 
	});	
	
	
	$("#password-confirm").keyup(function() { 
      $("#error-new-password").hide();
	});
	$('#agreeTerms').on('click', function () {
       if($(this).prop("checked") == true){
              $("#error-checkbox").hide();
            }
    });
	
	
	$( "#loginForm" ).submit(function( event ){ //on form submit       
        var proceed = true;
		$("#loginForm input[required=true]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
					$(this).focus();
                }
                //check invalid email
                var email_reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/; 
                if($(this).attr("type")=="email" && !email_reg.test($.trim($(this).val()))){
                    $(this).css('border-color','#dc3545'); //change border color to red  
					proceed = false; //set do not proceed flag            
                }
				
        });
		
          if(proceed){
			H5_loading.show();
			var formData = $("#loginForm").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/userLogin',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#error-email').show();
						
					}else{
						window.location.href=baseURL+"loan-application-process-form";
						return false;
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    });
	
	
	$( "#step1" ).submit(function( event ){ //on form submit       
        var proceed = true;
		$("#step1 input[required],#step1 radio[required],#step1 select[required]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
				}
				if ($("input[name='business_dba_r']").is(':checked')) {}else{
					$("#error_business_dba_r").show();
					proceed = false;
				}
				if ($("input[name='business_fax_r']").is(':checked')) {}else{
					$("#error_business_fax_r").show();
					proceed = false;
				}
				if ($("input[name='business_website_r']").is(':checked')) {}else{
					$("#error_business_website_r").show();
					proceed = false;
				}
				if ($("input[name='business_zip']").val().length!=5){
					$("#error_business_zip").show();
					proceed = false;
				}
				if ($("input[name='business_federal_tax_id']").val().length!=9){
					$("#error_business_federal_tax_id").show();
					proceed = false;
				}
				 var email_reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,3})?$/; 
                if($(this).attr("type")=="email" && !email_reg.test($.trim($(this).val()))){
                    $(this).css('border-color','#dc3545'); //change border color to red  
					proceed = false; //set do not proceed flag            
                }
				
        });
		if(proceed){
			H5_loading.show();
		    var formData = $("#step1").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/step1',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#personal').addClass('active');
						$('#step1').hide();
						$('#step2').show();
						return false;
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    });		
	$('body').on('keyup', '#step1 input[required]', function() {
		$(this).css('border-color',''); 
		$('#error_business_zip').hide(); 
		$('#error_business_federal_tax_id').hide(); 
	});
	$('body').on('change', '#step1 select[required]', function() {
		$(this).css('border-color',''); 
		
	});
	
	
	
	$( "#step2" ).submit(function( event ){ //on form submit  
	var proceed = true;
		$("#step2 input[required],#step2 select[required]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
					$(this).focus();
					
                }
        });


	
        if ($("input[name='ownership_r']").is(':checked')) {
			var ownership_r =   $('#ownership_r_hidden').val();
			if(ownership_r==1){
				    $('#payment').addClass('active');
						$('#step1,#step2').hide();
						$('#step3').show();
						return false;
			 }
			 if(ownership_r==0){
				if ($("input[name='ownership_zip']").val().length!=5){
					$("#error_ownership_zip").show();
					proceed = false;
					return false;
				}
				if ($("input[name='ownership_ssn']").val().length!=9){
					$("#error_ownership_ssn").show();
					proceed = false;
					return false;
				}
			 }
			 
		}
		
	  
		if(proceed){
			H5_loading.show();
		    var formData = $("#step2").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/step2',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#payment').addClass('active');
						$('#step1,#step2').hide();
						$('#step3').show();
						return false;
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    
	});		
	$('body').on('keyup', '#step2 input[required]', function() {
		$(this).css('border-color',''); 
		$('#error_ownership_zip').hide(); 
		$('#error_ownership_ssn').hide(); 
	});
	
	$( "#step3" ).submit(function( event ){ //on form submit       
        var proceed = true;
		$("#step3 input[required],#step3 select[required]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
					$(this).focus();
				}
        });
		
		if(proceed){
			H5_loading.show();
		    var formData = $("#step3").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/step3',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#confirm').addClass('active');
						$('#step1,#step2,#step3').hide();
						$('#step4').show();
						return false;
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    });		
	$('body').on('keyup', '#step3 input[required]', function() {
		$(this).css('border-color',''); 
	});
	
	
	
	$( "#step4" ).submit(function( event ){
		//on form submit  
       
       var business_profile_ownership = $("input[name='business_profile_ownership[]']").filter(":checked").map(function(){return $(this).val();}).get();
	   
	   
	   var countCheckedBPCheckboxes = $("input[name='business_profile_ownership[]']").filter(':checked').length;
	   
	   
	    var business_merchant_profile = $("input[name='business_merchant_profile[]']").filter(":checked").map(function(){return $(this).val();}).get();
		var countCheckedBMCheckboxes = $("input[name='business_merchant_profile[]']").filter(':checked').length;
		
		  var business_card_profile = $("input[name='business_card_profile[]']").filter(":checked").map(function(){return $(this).val();}).get();
		  var countCheckedBCCheckboxes = $("input[name='business_card_profile[]']").filter(':checked').length;
		 
		
		 
		  if(countCheckedBPCheckboxes==0){
			 $('#error_business_profile_ownership').removeClass('by-default-hide');
			 return false;
		 }else{
			$('#error_business_profile_ownership').addClass('by-default-hide'); 
			
		 }
		 if(countCheckedBMCheckboxes==0){
			 $('#error_business_profile_merchant').removeClass('by-default-hide');
			  return false;
		 }else{
			 
			if(jQuery.inArray("Others", business_merchant_profile) != -1) {
				if($("#business_profile_ownership_text").val()==''){
						return false;
					 }else{
						 $('#error_business_profile_merchant').addClass('by-default-hide'); 
					 }
			} 
				
		}
		 if($("input[name='business_card_profile_r']").prop("checked") == true){
			 
			 if ($("input[name='business_card_profile_r']").is(':checked')) {
				 var business_card_profile_r =   $("input[name='business_card_profile_r']"
				 ).val();
				 if(business_card_profile_r==1){
					if(countCheckedBCCheckboxes==0){
						$('#error_business_profile_card').removeClass('by-default-hide');
						return false;
					}else{
						$('#error_business_profile_card').addClass('by-default-hide'); 

					}
				 }else{
					 $('#error_business_profile_card').addClass('by-default-hide'); 
				 }
		   }
		 }else{
			   //$('#error_business_profile_card').removeClass('by-default-hide');
				//return false;
			   //$('#error_business_profile_card').removeClass('by-default-hide');
				//return false;
		   }
	  
		   
		   H5_loading.show();
		    var formData = $("#step4").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/step4',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#E').addClass('active');
						$('#step1,#step2,#step3,#step4').hide();
						$('#step5').show();
						return false;
					}
				
				}
			});
				
        
      
		event.preventDefault();
		
    });	
$("#business_profile_ownership_text").keyup(function() { 
        $(this).css('border-color',''); 
	});
	
	$( "#step5" ).submit(function( event ){ //on form submit       
        var proceed = true;
		$("#step5 input[required],#step5 select[required]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
					$(this).focus();
				}
				if ($("input[name='cash_advance_plan_before_r']").is(':checked')) {}else{
					$("#error_cash_advance_plan_before_r").show();
					proceed = false;
				}
        });
		var  cash_advance_amount =$("input[name='cash_advance_amount']").val();
		var  cash_advance_master_m_sales =$("input[name='cash_advance_master_m_sales']").val();
		var  cash_advance_average_g_m_sales =$("input[name='cash_advance_average_g_m_sales']").val();
		var  cash_advance_average_t_size =$("input[name='cash_advance_average_t_size']").val();
		var  cash_advance_o_balance =$("input[name='cash_advance_o_balance']").val();
		var  cash_advance_c_balance =$("input[name='cash_advance_c_balance']").val();
		
		if(cash_advance_amount!=''){
			var CAA = checkLength(cash_advance_amount);
			if(CAA>8){
				$('#error_cash_advance_amount').removeClass('by-default-hide');
				proceed = false;
			}else{
				$('#error_cash_advance_amount').addClass('by-default-hide');
			}
		}
		if(cash_advance_master_m_sales!=''){
			var CAMS = checkLength(cash_advance_master_m_sales);
			if(CAMS>8){
				$('#error_cash_advance_master_m_sales').removeClass('by-default-hide');
				proceed = false;
			}else{
				$('#error_cash_advance_master_m_sales').addClass('by-default-hide');
			}
		}
		if(cash_advance_average_g_m_sales!=''){
			var CAGMS = checkLength(cash_advance_average_g_m_sales);
			if(CAGMS>8){
				$('#error_cash_advance_average_g_m_sales').removeClass('by-default-hide');
				proceed = false;
			}else{
				$('#error_cash_advance_average_g_m_sales').addClass('by-default-hide');
			}
		}
		if(cash_advance_average_t_size!=''){
			var CATS = checkLength(cash_advance_average_t_size);
			if(CATS>8){
				$('#error_cash_advance_average_t_size').removeClass('by-default-hide');
				proceed = false;
			}else{
				$('#error_cash_advance_average_t_size').addClass('by-default-hide');
			}
		}
		if(cash_advance_o_balance!=''){
			var CATS = checkLength(cash_advance_o_balance);
			if(CATS>8){
				$('#error_cash_advance_o_balance').removeClass('by-default-hide');
				proceed = false;
			}else{
				$('#error_cash_advance_o_balance').addClass('by-default-hide');
			}
		}
		if(cash_advance_c_balance!=''){
			var CATS = checkLength(cash_advance_c_balance);
			if(CATS>8){
				$('#error_cash_advance_c_balance').removeClass('by-default-hide');
				proceed = false;
			}else{
				$('#error_cash_advance_c_balance').addClass('by-default-hide');
			}
		}
		
		if(proceed){
			H5_loading.show();
		    var formData = $("#step5").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/step5',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#F').addClass('active');
						$('#step1,#step2,#step3,#step4,#step5').hide();
						$('#step6').show();
						return false;
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    });
	
	$( "#step6" ).submit(function( event ){ //on form submit       
        var proceed = true;
		$("#step6 input[required],#step6 textarea[required]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
					$(this).focus();
				}
				
        });
		if(proceed){
			H5_loading.show();
		    var formData = $("#step6").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/step6',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#G').addClass('active');
						$('#step1,#step2,#step3,#step4,#step5,#step6').hide();
						$('#step7').show();
						return false;
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    });
	
	
	
	
	$( "#step7" ).submit(function( event ){ //on form submit       
        var proceed = true;
		$("#step7 input[required],#step7 textarea[required],#step7 file[required]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
					//$(this).focus();
				}
			var signature64 =$('#signature64').val();
			
			if(signature64==''){
				$('#error-signature').show();
				proceed = false;
				
			}	
				
        });
		if(proceed){
			H5_loading.show();
		    var formData = $("#step7").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/step7',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					var obj = JSON.parse(msgData);
					if(obj.f==1){
						$('#G').addClass('active');
						$('#step1,#step2,#step3,#step4,#step5,#step6,#step7').hide();
						$('#step8div').replaceWith(obj.html);
						$('#step8').show();
						/*$.ajax({
									type: "POST",
									url: baseURL+'home/generatePdf',
									data: {
										d : 1
									},
									success: function(msgData) {
									}
								});
						return false;*/
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    });
	
	
	$( "#step8" ).submit(function( event ){ //on form submit       
        var proceed = true;
	   
		if(proceed){
			H5_loading.show();
				$.ajax({
					type: "POST",
					url: baseURL+'home/generatePdf',
					data: {
						d : 1
					},
					success: function(msgData) {
						H5_loading.hide();
						//$('#step1,#step2,#step3,#step4,#step5,#step6,#step7,#step8').hide();
						 //$('#step9').show();
						 
							$.ajax({
									type: "POST",
									url: baseURL+'home/admingeneratePdf',
									data: {
										d : 1
									},
									success: function(msgData) {
									    	H5_loading.hide();
									    $('#step1,#step2,#step3,#step4,#step5,#step6,#step7,#step8').hide();
						             $('#step9').show();
									}
								});
						 
						 
					}
				});
				
        }
       return false;
		event.preventDefault();
		
    });
	
	
	
	
	
	$('body').on('click', '.previous-step1', function() {
		$('#personal').removeClass('active');
		$('#step1').show();
		$('#step2').hide();
	});
	$('body').on('click', '.previous-step2', function() {
		$('#payment').removeClass('active');
		$('#step2').show();
		$('#step1,#step3').hide();
	});
	$('body').on('click', '.previous-step3', function() {
		$('#confirm').removeClass('active');
		$('#step3').show();
		$('#step1,#step2,#step4').hide();
	});
	$('body').on('click', '.previous-step4', function() {
		$('#E').removeClass('active');
		$('#step4').show();
		$('#step1,#step2,#step3,#step5').hide();
	});
	$('body').on('click', '.previous-step5', function() {
		$('#F').removeClass('active');
		$('#step5').show();
		$('#step1,#step2,#step3,#step4,#step6').hide();
	});
		$('body').on('click', '.previous-step6', function() {
		$('#G').removeClass('active');
		$('#step6').show();
		$('#step1,#step2,#step3,#step4,#step5,#step7').hide();
	});
	$('body').on('click', '.previous-step7', function() {
		$('#G').removeClass('active');
		$('#step7').show();
		$('#step1,#step2,#step3,#step4,#step5,#step6,#step8').hide();
	});
	$(".numbervalidation").on("keypress keyup blur",function (event) {    
           $(this).val($(this).val().replace(/[^\d].+/, ""));
            if ((event.which < 48 || event.which > 57)) {
                event.preventDefault();
            }
        });
		
	$("input[name='business_dba_r']").on('click', function () {
		if($(this).prop("checked") == true){
		   if ($("input[name='business_dba_r']").is(':checked')) {
			 var business_dba_r =   $(this).val();
			 if(business_dba_r==1){
				  $("#business_dba").removeClass("by-default-hide");
				  $("#business_dba").prop('required',true);
			}else{
				   $("#business_dba").addClass("by-default-hide");
				   $("#business_dba").prop('required',false);
				   $("#business_dba").css('border-color','');
			  }
			 
		   }
            $("#error_business_dba_r").hide();  
         }
    });	
	$("input[name='business_fax_r']").on('click', function () {
		if($(this).prop("checked") == true){
		   if ($("input[name='business_fax_r']").is(':checked')) {
			 var business_fax_r =   $(this).val();
			 if(business_fax_r==1){
				  $("#business_fax").removeClass("by-default-hide");
				  $("#business_fax").prop('required',true);
			      
			  }else{
				   $("#business_fax").addClass("by-default-hide");
				   $("#business_fax").prop('required',false);
				   $("#business_fax").css('border-color','');
			  }
			 
		   }
            $("#error_business_fax_r").hide();   
         }
    });	
		$("input[name='cash_advance_plan_before_r']").on('click', function () {
		if($(this).prop("checked") == true){
		   if ($("input[name='cash_advance_plan_before_r']").is(':checked')) {
			 var cash_advance_plan_before_r =   $(this).val();
			 if(cash_advance_plan_before_r==1){
				  $("#cash_advance_plan_before_id,#cash_advance_company_use_id").removeClass("by-default-hide");
				  $("#cash_advance_company_use").prop('required',true);
			      
			  }else{
				   $("#cash_advance_plan_before_id,#cash_advance_company_use_id").addClass("by-default-hide");
				   $("#cash_advance_company_use").prop('required',false);
				   $("#cash_advance_company_use").css('border-color','');
			  }
			 
		   }
           $("#error_cash_advance_plan_before_r	").hide();     
         }
    });	
		
	$("input[name='business_website_r']").on('click', function () {
		if($(this).prop("checked") == true){
		   if ($("input[name='business_website_r']").is(':checked')) {
			 var business_website_r =   $(this).val();
			 if(business_website_r==1){
				  $("#business_website").removeClass("by-default-hide");
				  $("#business_website").prop('required',true);
			      
			  }else{
				   $("#business_website").addClass("by-default-hide");
				   $("#business_website").prop('required',false);
				   $("#business_website").css('border-color','');
			  }
			 
		   }
            $("#error_business_website_r").hide();  
         }
    });		
	
	/*$("input[name='business_dba_r']").on('click', function () {
       if($(this).prop("checked") == true){
              $("#error_business_dba_r").hide();
       }
    });
	$("input[name='business_fax_r']").on('click', function () {
       if($(this).prop("checked") == true){
              $("#error_business_fax_r").hide();
       }
    });
	$("input[name='business_website_r']").on('click', function () {
       if($(this).prop("checked") == true){
            $("#error_business_website_r").hide();
       }
    });*/
	
	$("input[name='ownership_r']").on('click', function () {
		if($(this).prop("checked") == true){
		   if ($("input[name='ownership_r']").is(':checked')) {
			 var ownership_r =   $(this).val();
			 $('#ownership_r_hidden').val(ownership_r);
			 
			 if(ownership_r==1){
				      $('#payment').addClass('active');
						$('#step1,#step2').hide();
						$("#owershoipid,#owershoipidsubmit").addClass("by-default-hide-ow");
						$('#step3').show();
			      
			  }else{
					$('#personal').addClass('active');
						$('#step1').hide();
						$("#owershoipid,#owershoipidsubmit").removeClass("by-default-hide-ow");
						$('#step2').show();
				}
			}
         }
    });
	$("input[name='business_card_profile_r']").on('click', function () {
		if($(this).prop("checked") == true){
		   if ($("input[name='business_card_profile_r']").is(':checked')) {
			 var business_card_profile_r =   $(this).val();
			 if(business_card_profile_r==1){
				  $("#cardid").removeClass("by-default-hide-card");
				}else{
				   $("#cardid").addClass("by-default-hide-card");
			   }
			 
		   }
              
         }
    });
	$("input[name='cash_advance_plan_before_r']").on('click', function () {
		if($(this).prop("checked") == true){
		   if ($("input[name='cash_advance_plan_before_r']").is(':checked')) {
			 var cash_advance_plan_before_r =   $(this).val();
			 if(cash_advance_plan_before_r==1){
				  $("#cash_advance_plan_before_id").removeClass("by-default-hide");
				}else{
				   $("#cash_advance_plan_before_id").addClass("by-default-hide");
			   }
			 
		   }
              
         }
    });
	
	$("input[name='additional_for_to_upload_r']").on('click', function () {
		if($(this).prop("checked") == true){
		   if ($("input[name='additional_for_to_upload_r']").is(':checked')) {
			 var additional_for_to_upload_r =   $(this).val();
			 if(additional_for_to_upload_r==1){
				  $('#additional_for_to_upload').show();
			}else{
				  $('#additional_for_to_upload').hide();
			  }
			 
		   }
             
         }
    });	
	
	
	
   $('#ownershipCheckAll').change(function () {
    ($(this).is(":checked") ? $('.ownershipcheckboxes').prop("checked", true) :    $('.ownershipcheckboxes').prop("checked", false))
	});
	
	$('#merchantCheckAll').change(function () {
    ($(this).is(":checked") ? $('.merchantcheckboxes').prop("checked", true) :    $('.merchantcheckboxes').prop("checked", false))
	});
	$('#cardCheckAll').change(function () {
    ($(this).is(":checked") ? $('.cardcheckboxes').prop("checked", true) :    $('.cardcheckboxes').prop("checked", false))
	});
	
	$('.ownershipcheckboxes').click(function () {
		$("#error_business_profile_ownership").addClass("by-default-hide");
	});
	$('.merchantcheckboxes').click(function () {
		if($(this).prop("checked") == true){
			   if ($(this).is(':checked')) {
			       var R= $(this).val();
					if(R=='Others'){
						$('#business_profile_ownership_text').removeClass('by-default-hide');
						$("#business_profile_ownership_text").prop('required',true);
						$("#business_profile_ownership_text").css('border-color','#DC3545');
					}
			   }
			  
		}
		   if ($(this).is(':not(:checked)')) {
			   var R= $(this).val();
			      if(R=='Others'){
					$('#business_profile_ownership_text').val('');
					$('#business_profile_ownership_text').addClass('by-default-hide');
					$("#business_profile_ownership_text").prop('required',false);
					$("#business_profile_ownership_text").css('border-color','');
					}
			   }
		$("#error_business_profile_merchant").addClass("by-default-hide");
	});
	$('#cardCheckAll,.cardcheckboxes').click(function () {
		$("#error_business_profile_card").addClass("by-default-hide");
	});
	
	$( "#forgotForm" ).submit(function( event ){ //on form submit       
        var proceed = true;
		$("#forgotForm input[required=true]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','#dc3545'); //change border color to red   
					proceed = false; //set do not proceed flag
					$(this).focus();
                }
                //check invalid email
                var email_reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/; 
                if($(this).attr("type")=="email" && !email_reg.test($.trim($(this).val()))){
                    $(this).css('border-color','#dc3545'); //change border color to red  
					proceed = false; //set do not proceed flag            
                }
				
        });
		
          if(proceed){
			H5_loading.show();
			var formData = $("#forgotForm").serialize();
			$.ajax({
				type: "POST",
				url: baseURL+'home/userForgotPassword',
				data: {
					formdata : formData
				},
				success: function(msgData) {
					H5_loading.hide();
					if(msgData==1){
						$('#error-email').show();
						return false;
						
					}else{
						$('#email').val('');
						$('#success-email').show();
						return false;
					}
				
				}
			});
				
        }
       return false;
		event.preventDefault();
		
    });
	

	$("#dateField").blur(function () {
	   var v = $(this).val();
	   var bv = v.split("/");
       if(v!=''){
			 if(bv[0]>parseInt(12)){
				 $("#dateField").val('');
				 $('#business_date_error').show();
				 return false;
			 } 
			if(bv[1]>parseInt(31)){
				$("#dateField").val('');
				 $('#business_date_error').show();
				  return false;
			 } 
			if(bv[2]==''){
				 $("#dateField").val('');
				 $('#business_date_error').show();
				  return false;
			 }		 
		}
		});
	
	
	
	
				var baseURL = $('#baseURL').val();
				var img_zone = document.getElementById('img-zone'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				
				var img_zone_1 = document.getElementById('img-zone-1'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				var img_zone_2 = document.getElementById('img-zone-2'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				var img_zone_3 = document.getElementById('img-zone-3'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				var img_zone_4 = document.getElementById('img-zone-4'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				var img_zone_5 = document.getElementById('img-zone-5'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				var img_zone_6 = document.getElementById('img-zone-6'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				var img_zone_7 = document.getElementById('img-zone-7'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				var img_zone_8 = document.getElementById('img-zone-8'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				
				var img_zone_9 = document.getElementById('img-zone-9'),		
				collect = {
					filereader: typeof FileReader != 'undefined',
					zone: 'draggable' in document.createElement('span'),
					formdata: !!window.FormData
				}, 
				acceptedTypes = {
					'image/png': true,
					'image/jpeg': true,
					'image/jpg': true,
					'image/gif': true
				};
				
				
				// Function to show messages
				if(img_zone!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone);
					}
				}
				if(img_zone_1!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone_1);
					}
				}
				if(img_zone_2!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone_2);
					}
				}
				if(img_zone_3!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone_3);
					}
				}
				if(img_zone_4!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone_4);
					}
				}
				if(img_zone_5!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone_5);
					}
				}
				if(img_zone_6!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone_6);
					}
				}
				if(img_zone_7!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone_7);
					}
				}
				if(img_zone_8!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone_8);
					}
				}
				if(img_zone_9!=''){
					function ajax_msg(status, msg) {
						var the_msg = '<div class="alert alert-'+ (status ? 'success' : 'danger') +'">';
						the_msg += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
						the_msg += msg;
						the_msg += '</div>';
						$(the_msg).insertBefore(img_zone_9);
					}
				}
				
				// Function to upload image through AJAX
				function ajax_upload(files,imagenoType) {
				    $('#imageextension').hide();
				    $('#imagefsize').hide();
					var filelength  =files.length;
					$('.progress').removeClass('hidden');
					$('.progress-bar').css({ "width": "0%" });
					$('.progress-bar span').html('0% complete');	
										
					var formData = new FormData();					
					formData.append('image_number', imagenoType);
					for (var i = 0; i < files.length; i++) {
						//formData.append('img_file_' + i, files[i]);
						var fextension = files[i].name.split('.').pop().toLowerCase();
						console.log(fextension);
						
						
                        if(jQuery.inArray(fextension, ['gif','png','jpg','jpeg','pdf','doc','docx']) == -1) {
                          jQuery('#imageextension').show();
                        //alert('Sorry, invalid extension. Please upload  only these extension gif, png, jpg, jpeg, bmp');
                         return false;
                        }else{
							if(files[i].size > 9048576){
								jQuery('#galleryName').append('<p style="color:red;">'+files[i].name+'</p>');
								jQuery('#imagefsize').show();
								
							}else{
							 jQuery('#galleryName').append('<p>'+files[i].name+'</p>');	
							 formData.append('userfile[]', files[i]);
							}
                        }
						
						
						//$('#galleryName').append('<p>'+files[i].name+'</p>');
						//formData.append('userfile[]', files[i]);
					}	
										
					
					$.ajax({
						 url: baseURL+'home/multipleImageStore', // Change name according to your php script to handle uploading on server
						type : 'post',
						data : formData,
						dataType : 'json',						
						processData: false,
						contentType: false,
						error : function(request){
							ajax_msg(false, 'An error has occured while uploading photo.'); 								
						},
						success : function(json){
							$('#img-preview').html('');
							var img_preview = $('#img-preview');
							var col = '.col-md-4';
							$('.progress').addClass('hidden');	
							var photos = $('<div class="photos"></div>');
							$(photos).html(json.img);								
							var lt = $(col, photos).length;
							$('col', photos).hide();
							$(img_preview).prepend(photos.html());
							$(col + ':lt('+lt+')', img_preview).fadeIn(2000);	
							H5_loading.hide();	
							
							$('#galleryName').html('');
						
						 return false;
							if(json.error != '') 
								ajax_msg(false, json.error);
						},
						progress: function(e) {
							if(e.lengthComputable) {
								var pct = (e.loaded / e.total) * 100;
								$('.progress-bar').css({ "width": pct + "%" });	
								$('.progress-bar span').html(pct + '% complete');							
								$('#sr-only-number').html(parseInt(pct) + '%');	
								if(parseInt(pct)==100){
									H5_loading.show();
									
								}
							}
							else {
								console.warn('Content Length not reported!');
							}
						}
					});					
				}
				
				// Call AJAX upload function on drag and drop event
				function dragHandle(element) {
					element.ondragover = function () { return false; };
					element.ondragend = function () { return false; };
					element.ondrop = function (e) { 
						e.preventDefault();
						ajax_upload(e.dataTransfer.files,imagenoType);
					}  		
				}
				
				if (collect.zone) {  		
					dragHandle(img_zone);
				} 
				else {
					alert("Drag & Drop isn't supported, use Open File Browser to upload photos.");			
				}
			
				// Call AJAX upload function on image selection using file browser button
				$(document).on('change', '.btn-file :file', function() {
					$(this).css('border-color','');
					var relData = $(this).attr('rel');
				   
					if(this.files.length > 0){
						ajax_upload(this.files,relData);
					}
									
				});
				
				// File upload progress event listener
				(function($, window, undefined) {
					var hasOnProgress = ("onprogress" in $.ajaxSettings.xhr());
				
					if (!hasOnProgress) {
						return;
					}
					
					var oldXHR = $.ajaxSettings.xhr;
					$.ajaxSettings.xhr = function() {
						var xhr = oldXHR();
						if(xhr instanceof window.XMLHttpRequest) {
							xhr.addEventListener('progress', this.progress, false);
						}
						
						if(xhr.upload) {
							xhr.upload.addEventListener('progress', this.progress, false);
						}
						
						return xhr;
					};
				})(jQuery, window);	
				
				
				
	$('#clear').click(function() {
		$('#sigcanvasTargetDom').html('');
		$('#signature64').val('');
		return false;
	});	
	
});

function deleteResponsiblePerson($id){
	var baseURL = $('#baseURL').val();
	H5_loading.show();
	$.ajax({
				type: "POST",
				url: baseURL+'home/deleteprimaryForm',
				data: {
					id : $id
				},
				success: function(msgData) {
					H5_loading.hide();
					$('#card'+$id).remove();
					window.location.href=baseURL+"primary";
					return false;
					
				}
			});
}
function checkLength($txtid){
	//alert($("input[name='landlord_m_rent']").val().length);
		var oldString = $txtid.replace(/[^\d\.]/g, '');
		var newString = oldString.split('.', 1)[0];
		//alert(newString.length);
	return newString.length;
}


function removeimage($id){
		var baseURL = $('#baseURL').val();
		//H5_loading.show();
		
		$('#add_files_'+$id).remove();
		$.ajax({
		
		url: baseURL+'home/deleteadditionalFiles',
		type: 'post',
		data: {
		id :$id
		
		},
		success: function(response){
			H5_loading.hide();

		}

		});
		}

var el = document.getElementById("dateField");

    el.onkeyup = function(evt) {
		
        if((evt.keyCode >= 48 && evt.keyCode <= 57) || (evt.keyCode >= 96 && 
     evt.keyCode <= 105)) {
           evt = evt || window.event;
            $('#business_date_error').hide();
           var size = document.getElementById('dateField').value.length;
		 
		   var last2 = Number(document.getElementById('dateField').value.split('/')[2]);
			if(last2>2021){
			 $('#business_date_error').show();
			 document.getElementById('dateField').value = ''; 
			 return false;
			}
           if ((size == 2 && document.getElementById('dateField').value > 12)|| (size == 5 && Number(document.getElementById('dateField').value.split('/')[1]) > 31) || (size == 10 && Number(document.getElementById('dateField').value.split('/')[2]) > 2021)) {
               $('#business_date_error').show();
               document.getElementById('dateField').value = ''; 
               return;
           }

          if ((size == 2 && document.getElementById('dateField').value < 13)|| (size == 5 && Number(document.getElementById('dateField').value.split('/')[1]) < 32)) {
              document.getElementById('dateField').value += '/';        
          } 

        }
    }
	 
	
	var el1 = document.getElementById("ownership_dob");

    el1.onkeyup = function(evt) {
        if((evt.keyCode >= 48 && evt.keyCode <= 57) || (evt.keyCode >= 96 && 
     evt.keyCode <= 105)) {
           evt = evt || window.event;
            $('#ownership_dob_error').hide();
           var size = document.getElementById('ownership_dob').value.length;
		   var last2 = Number(document.getElementById('ownership_dob').value.split('/')[2]);
			if(last2>2021){
			 $('#ownership_dob_error').show();
			 document.getElementById('ownership_dob').value = ''; 
			 return false;
			}
           if ((size == 2 && document.getElementById('ownership_dob').value > 12)|| (size == 5 && Number(document.getElementById('ownership_dob').value.split('/')[1]) > 31) || (size == 10 && Number(document.getElementById('ownership_dob').value.split('/')[2]) > 2021)) {
               $('#ownership_dob_error').show();
               document.getElementById('ownership_dob').value = ''; 
               return;
           }

          if ((size == 2 && document.getElementById('ownership_dob').value < 13)|| (size == 5 && Number(document.getElementById('ownership_dob').value.split('/')[1]) < 32)) {
              document.getElementById('ownership_dob').value += '/';        
          } 

        }
    }
	
	var el2 = document.getElementById("signature_date");

    el2.onkeyup = function(evt) {
        if((evt.keyCode >= 48 && evt.keyCode <= 57) || (evt.keyCode >= 96 && 
     evt.keyCode <= 105)) {
           evt = evt || window.event;
            $('#signature_date_error').hide();
           var size = document.getElementById('signature_date').value.length;
		   var last2 = Number(document.getElementById('signature_date').value.split('/')[2]);
			if(last2>2021){
			 $('#signature_date_error').show();
			 document.getElementById('signature_date').value = ''; 
			 return false;
			}
           if ((size == 2 && document.getElementById('signature_date').value > 12)|| (size == 5 && Number(document.getElementById('signature_date').value.split('/')[1]) > 31) || (size == 10 && Number(document.getElementById('signature_date').value.split('/')[2]) > 2021)) {
               $('#signature_date_error').show();
               document.getElementById('signature_date').value = ''; 
               return;
           }

          if ((size == 2 && document.getElementById('signature_date').value < 13)|| (size == 5 && Number(document.getElementById('signature_date').value.split('/')[1]) < 32)) {
              document.getElementById('signature_date').value += '/';        
          } 

        }
    }
