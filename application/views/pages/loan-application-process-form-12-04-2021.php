<style>
.by-default-hide,.by-default-hide-ow,.by-default-hide-card {display:none;}
.error-radio{color: red;font-size: 12px;}

.kbw-signature { width: 800px; height: 200px; }
.error-cls {color:red;}

.progress,#img-preview {margin-top: 15px;}
.hidden {display: none!important;}
.progress-bar-success {background-color: #5cb85c !important;}


</style>
<div class="container">
	<!-- MultiStep Form -->
<div class="container-fluid" id="grad1">
    <div class="row justify-content-center mt-0">
        <div class="col-11 text-center p-0 mt-3 mb-2">
            <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                <h2><strong>Loan Application Processing Form</strong></h2>
                <p>Fill all form field to go to next step</p>
                <div class="row">
                    <div class="col-md-12 mx-0">
                        <div id="msform" class="">
                            <!-- progressbar -->
                            <ul id="progressbar">
                                <li class="active" id="account"></li>
                                <li id="personal"></li>
                                <li id="payment"></li>
                                <li id="confirm"></li>
                                <li id="E"></li>
                                <li id="F"></li>
                                <li id="G"></li>
                            </ul> <!-- fieldsets -->
						 <form  class="form-group fieldset" id="step1"  action="#" method="post" role="form" novalidate=""  >
                          <div class="">
                                <div class="form-card row">
                                    <h2 class="fs-title col-12">BUSINESS INFORMATION</h2>
									<div class="input-group col-6">
									<input type="text" name="business_name" placeholder="Legal/corporate name:"  value="<?php if(!empty($records['business_name'])) { echo $records['business_name'];
								}?>" required />
									</div>
									<div class="input-group col-3 inline">
										<p>
										<span> DBA :</span>
										<span><label> <input  type="radio" name="business_dba_r" value="1" <?php if(isset($records['business_dba_r'])) { if($records['business_dba_r']==1){ echo"checked";} } ?> />Yes </label></span>
										<span><label> <input type="radio" name="business_dba_r" value="0"  <?php if(isset($records['business_dba_r'])) { if($records['business_dba_r']==0){ echo"checked";} } ?> /> No</label></span>
										<span id="error_business_dba_r" style="display:none;" class="error-radio">You must select yes or no</span>	
										</p>
									
									</div>
									<div class="input-group col-3">
									<input id="business_dba" class="<?php if(isset($records['business_dba_r'])) { if($records['business_dba_r']==0){ ?> by-default-hide <?php }  if($records['business_dba_r']==1) { } }else{ ?>by-default-hide <?php }?>" type="text" name="business_dba" placeholder="DBA:"    value="<?php if(!empty($records['business_dba'])) { echo $records['business_dba']; }?>"/>
									</div>
									<div class="input-group col-6">
									<input type="text" name="business_physical_address" placeholder="Physical address:"  required  value="<?php if(!empty($records['business_physical_address'])) { echo $records['business_physical_address']; }?>" />
									</div>
									<div class="input-group col-2">
									<input maxlength="35" type="text" name="business_city" placeholder="City:"  required  value="<?php if(!empty($records['business_city'])) { echo $records['business_city']; }?>" />
									</div>
									<div class="input-group col-2">
									<select  name="business_state" required>
									<option value="">Select State</option>
									<?php foreach($state as $state) {?>
									<option value="<?php echo $state->name;?>"  <?php if(!empty($records['business_state'])) { if($records['business_state']==$state->name){ echo"selected";}}?>><?php echo $state->name?></option>
									<?php }?>
									</select>
									
									</div>
									<div class="input-group col-2">
									<input  required maxlength="5"  class="numbervalidation" type="text" name="business_zip" placeholder="Zip:" value="<?php if(!empty($records['business_zip'])) { echo $records['business_zip']; }?>" />
									<span id="error_business_zip" style="display:none;" class="error-radio">zip enter 5 digit</span>
									</div>
									<div class="input-group col-3">
									<input  required maxlength="10"  class="numbervalidation"  type="text" name="business_phone" placeholder="Business phone:"  value="<?php if(!empty($records['business_phone'])) { echo $records['business_phone']; }?>" />
									</div>
									<div class="input-group col-3 inline">
										<p>
										<span> Fax :</span>
										<span><label> 
										<input  type="radio" name="business_fax_r" value="1"  <?php if(isset($records['business_fax_r'])) { if($records['business_fax_r']==1){ echo"checked";} } ?>/>Yes </label></span>
										<span><label> 
										<input type="radio" name="business_fax_r" value="0"  <?php if(isset($records['business_fax_r'])) { if($records['business_fax_r']==0){ echo"checked";} } ?> /> No</label></span>
										<span id="error_business_fax_r" style="display:none;" class="error-radio">You must select yes or no</span>	
										</p>
									</div>
									<div class="input-group col-3">
									<input id="business_fax" class="<?php if(isset($records['business_fax_r'])) { if($records['business_fax_r']==0){ ?> by-default-hide <?php }  if($records['business_fax_r']==1) { } }else{ ?>by-default-hide <?php }?>" type="text" name="business_fax" placeholder="Fax:"  value="<?php if(!empty($records['business_fax'])) { echo $records['business_fax']; }?>"  />
									</div>
									<div class="input-group col-3">
									<input required maxlength="9"  class="numbervalidation"  type="text" name="business_federal_tax_id" placeholder="Federal tax ID:"  value="<?php if(!empty($records['business_federal_tax_id'])) { echo $records['business_federal_tax_id']; }?>"/>
									<span id="error_business_federal_tax_id" style="display:none;" class="error-radio">zip enter 9 digit</span>
									</div>
									<div class="input-group col-3">
									<input type="text" name="business_contact_no" placeholder="Contact:"  value="<?php if(!empty($records['business_contact_no'])) { echo $records['business_contact_no']; }?>" />
									</div>
									
									<div class="input-group col-3">
									<input  required type="email" name="business_email" placeholder="E-mail:" value="<?php if(!empty($records['business_email'])) { echo $records['business_email']; }?>" />
									</div>
									<div class="input-group col-3 inline">
										<span> Website :</span>
										<span><label> <input  type="radio" name="business_website_r" value="1" <?php if(isset($records['business_website_r'])) { if($records['business_website_r']==1){ echo"checked";} } ?> />Yes </label></span>
										<span><label> <input type="radio" name="business_website_r" value="0"  <?php if(isset($records['business_website_r'])) { if($records['business_website_r']==0){ echo"checked";} } ?> /> No</label></span>
										<span id="error_business_website_r" style="display:none;" class="error-radio">You must select yes or no</span>
										</p>
									</div>
									<div class="input-group col-3">
									<input id="business_website" class="<?php if(isset($records['business_website_r'])) { if($records['business_website_r']==0){ ?> by-default-hide <?php }  if($records['business_website_r']==1) { } }else{ ?>by-default-hide <?php }?>" type="text" name="business_website" placeholder="website:"  value="<?php if(!empty($records['business_website'])) { echo $records['business_website']; }?>" />
									</div>
								
									<div class="input-group col-3">
									<input name="business_date" id="dateField" type="text" placeholder="Date business started"  value="<?php if(!empty($records['business_date'])) { echo $records['business_date']; }?>" >
									<span class="error-radio" style="display:none;" id="business_date_error">date format not vaild</span>
									</div>
									
									
									
									
									<div class="input-group col-4">
									<select required class="form-control"  name="business_length_of_ownership_year">
									<option value="">Length of ownership Year</option>
									<?php for($i=1; $i<=100; $i++) {?>
									<option value="<?php echo $i;?>" <?php if(!empty($records['business_length_of_ownership_year'])) { if($records['business_length_of_ownership_year']==$i){ echo"selected";}}?>><?php echo $i;?></option>
									<?php }?>
									</select>
									</div>
									<div class="input-group col-4">
									<select required class="form-control"  name="business_length_of_ownership_month">
									<option value="">Length of ownership Month</option>
									<?php for($i=1; $i<=12; $i++) {?>
									<option value="<?php echo $i;?>" <?php if(!empty($records['business_length_of_ownership_month'])) { if($records['business_length_of_ownership_month']==$i){ echo"selected";}}?>><?php echo $i;?></option>
									<?php }?>
									</select>
									</div>
									
									
									<div class="input-group col-4">
									<select required class="form-control"  name="business_year_at_location_month_year">
									<option value="">Years at location</option>
									<?php for($i=1; $i<=100; $i++) {?>
									<option value="<?php echo $i;?>" <?php if(!empty($records['business_year_at_location_month_year'])) { if($records['business_year_at_location_month_year']==$i){ echo"selected";}}?>><?php echo $i;?></option>
									<?php }?>
									</select>
									</div>
									
									<div class="input-group col-4">
									<select required class="form-control"  name="business_year_at_location_month">
									<option value="">Months at location</option>
									<?php for($i=1; $i<=12; $i++) {?>
									<option value="<?php echo $i;?>" <?php if(!empty($records['business_year_at_location_month'])) { if($records['business_year_at_location_month']==$i){ echo"selected";}}?>><?php echo $i;?></option>
									<?php }?>
									</select>
									</div>
									
									
									
									<div class="input-group col-3">
									<input required type="text" name="business_locations" placeholder="NO. of Locations:"  value="<?php if(!empty($records['business_locations'])) { echo $records['business_locations']; }?>" />
									</div>
                                </div> 
                                </div> 
								
								
								<input name="businessBtn" id="businessBtn" type="submit" class="next1 action-button" value="Next">
                            
							</form>
						 <form class="form-group fieldset" id="step2"  action="#" method="post" role="form" novalidate="" > 
                              <div class="">
                                <div class="form-card row">
                                    <h2 class="fs-title">OWNERSHIP</h2><br><br>	
									<p class="col-12 inline">
										<span> Do you own this business? :</span>
										<span> <input type="radio" name="ownership_r" value="0" <?php if(isset($records['ownership_r'])) { if($records['ownership_r']==0){ echo"checked";} } ?>> Yes </span>
										<span> <input type="radio" name="ownership_r" value="1" <?php if(isset($records['ownership_r'])) { if($records['ownership_r']==1){ echo"checked";} } ?>>No </span>
										
										</p>
								   <div id="owershoipid" class="<?php if(isset($records['ownership_r'])) { if($records['ownership_r']==1){ ?> by-default-hide-ow <?php }  if($records['ownership_r']==0) { } }else{ ?>by-default-hide-ow <?php }?>  form-card row">		
									<div class="input-group col-6">
									<input type="text" name="ownership_name" placeholder="Name:" required  value="<?php if(!empty($records['ownership_name'])) { echo $records['ownership_name']; }?>" />
									</div>
									<div class="input-group col-6"> 
									<input  maxlength="10" type="text" name="ownership_contact_phone_number" placeholder="Contact phone number:"  value="<?php if(!empty($records['ownership_contact_phone_number'])) { echo $records['ownership_contact_phone_number']; }?>" required />
									</div>
									<div class="input-group col-6">
									<input type="text" name="ownership_adddress" placeholder="Home address:"  value="<?php if(!empty($records['ownership_adddress'])) { echo $records['ownership_adddress']; }?>" required />
									</div>
									<div class="input-group col-2">
									<input maxlength="35" type="text" name="ownership_city" placeholder="City:" value="<?php if(!empty($records['ownership_city'])) { echo $records['ownership_city']; }?>" required />
									</div>
									<div class="input-group col-2">
									
									<select  name="ownership_state" required>
									<option value="">Select State</option>
									<?php foreach($state_1 as $state) {?>
									<option value="<?php echo $state->name;?>"  <?php if(!empty($records['ownership_state'])) { if($records['ownership_state']==$state->name){ echo"selected";}}?>><?php echo $state->name?></option>
									<?php }?>
									</select>
									</div>
									<div class="input-group col-2">
									<input maxlength="5" type="text" name="ownership_zip" placeholder="Zip:"  value="<?php if(!empty($records['ownership_zip'])) { echo $records['ownership_zip']; }?>" required />
									<span id="error_ownership_zip" style="display:none;" class="error-radio">zip enter 5 digit</span>
									</div>
									<div class="input-group col-6">
									<input  id="ownership_dob" class="datepicker_1" type="date" name="ownership_dob" placeholder="Date of birth:"  value="<?php if(!empty($records['ownership_dob'])) { echo $records['ownership_dob']; }?>" required />
									<span class="error-radio" style="display:none;" id="ownership_dob_error">date format not vaild</span>
									</div>
									<div class="input-group col-6">
									<input maxlength="9"  class="numbervalidation" type="text" name="ownership_ssn" placeholder="SSN:"  value="<?php if(!empty($records['ownership_ssn'])) { echo $records['ownership_ssn']; }?>" required />
									<span id="error_ownership_ssn" style="display:none;" class="error-radio">ssn enter 9 digit</span>
									</div>
									<div class="input-group col-6">
									<input  maxlength="3"  class="numbervalidation" type="text" name="ownership_of_company" placeholder="% Ownership of company:"  value="<?php if(!empty($records['ownership_of_company'])) { echo $records['ownership_of_company']; }?>" required />
									</div>
									<div class="input-group col-6">
									<input type="text" name="ownership_title" placeholder=" Title:"  value="<?php if(!empty($records['ownership_title'])) { echo $records['ownership_title']; }?>" required />
									</div>
									</div>
                                </div>
                                </div>
								
								<input type="button" name="previous" class="previous action-button-previous previous-step1" value="Previous" />
								
								<div  id="owershoipidsubmit" class="<?php if(isset($records['ownership_r'])) { if($records['ownership_r']==1){ ?> by-default-hide-ow <?php }  if($records['ownership_r']==0) { } }else{ ?>by-default-hide-ow <?php }?>">
								<input name="ownershipBtn" id="ownershipBtn" type="submit" class="next1 action-button" value="Next">
								</div>
                           <input name="ownership_r_hidden" id="ownership_r_hidden" type="hidden" value="ssss">
                            </form>
							
							 <form class="form-group fieldset" id="step3"  action="#" method="post" role="form" novalidate=""> 
							  <div class="">
                                 <div class="form-card row">
                                    <h2 class="fs-title">LEASE <small>(Landlord Information)</small></h2><br/><br>	
									
									<div class="input-group col-6">
									<input type="text" name="landlord_name" placeholder="Landlord name:"  value="<?php if(!empty($records['landlord_name'])) { echo $records['landlord_name']; }?>" required />
									</div>
									<div class="input-group col-6"> 
									<input    type="text" name="landlord_contact" placeholder="Contact:" value="<?php if(!empty($records['landlord_contact'])) { echo $records['landlord_contact']; }?>"  required />
									</div>
									
									<div class="input-group col-6">
									<input type="text" class="numbervalidation_1" name="landlord_m_rent" placeholder="Monthly rent:"  value="<?php if(!empty($records['landlord_m_rent'])) { echo $records['landlord_m_rent']; }?>" required />
									</div>
									<div class="input-group col-6"> 
									<input type="text" class="numbervalidation"  maxlength="10" name="landlord_phone_no" placeholder="Phone:" value="<?php if(!empty($records['landlord_phone_no'])) { echo $records['landlord_phone_no']; }?>" required />
									</div>
									
                                </div>
                                </div>
								<input type="button" name="previous" class="previous action-button-previous previous-step2" value="Previous" />
								
								<input name="landlordBtn" id="landlordBtn" type="submit" class="next1 action-button" value="Next">
                            </form>
                             <form class="form-group fieldset" id="step4"  action="#" method="post" role="form" novalidate=""  > 
							 <div class="">
                                 <div class="form-card row">
                                    <h2 class="fs-title text-center">BUSINESS PROFILE</h2> <br/><br/>									
									 <?php 
									 $ownershiparry = '';
									 if(!empty($records['business_profile_ownership'])) {
										 $ownership_arr = unserialize($records['business_profile_ownership']);
										
									 }
									 $merchantarry = '';
									  if(!empty($records['business_merchant_profile'])) {
										 $merchantarry = unserialize($records['business_merchant_profile']);
									}
									 $cardarry = '';
									  if(!empty($records['business_card_profile'])) {
										 $cardarry = unserialize($records['business_card_profile']);
									}
									 ?>
									<div class="input-group col-4">
									<h5>Ownership: </h5>
									<label style="display:none;"><input <?php if(!empty($ownership_arr)) { 
									if (count($ownership_arr)=='4'){ echo"checked";}}?> type='checkbox' id='ownershipCheckAll'>Check all</label>
									
									<?php foreach($ownership as $ownership){?>
										<label><input type="radio" name="business_profile_ownership[]" value="<?php echo $ownership->name;?>"  class='ownershipcheckboxes'   <?php if(!empty($ownership_arr)) { if (in_array($ownership->name, $ownership_arr)){ echo"checked";}}?>/><?php echo $ownership->name;?> </label>
									<?php } ?>
									<span id="error_business_profile_ownership" class="error-radio by-default-hide">You must select atleast one</span>
									
								
									
									
									</div>
									<div class=" col-4 row">
									<h5 class="col-12 p-0">Merchant type: </h5>
									<div class="input-group " style="display:none;"><label><input  <?php if(!empty($merchantarry)) { 
									if (count($merchantarry)=='6'){ echo"checked";}}?> type='checkbox' id='merchantCheckAll' class="input-group col-6 p-0">Check all</label></div>
									
									<?php 
									$num = 1;
									foreach ( $merchant as $merchant ) { 
									if($num%4) {
										
										if(!empty($merchantarry)) { 
											if (in_array($merchant->name, $merchantarry)){ 
											 $checked = "checked";
											}else{
												 $checked = "";
											}
									}else{
										$checked = "";
									}
										
										echo '<div class="input-group col-6 p-0">
										<label><input '.$checked.' type="checkbox" name="business_merchant_profile[]" value='.$merchant->name.'  class="merchantcheckboxes"/>'.$merchant->name.'</label>';
									}if($num %4) {
											echo '</div>';
										}
									 $num++;
									}
								?>
									<div class="input-group col-12">
									<input maxlength="20" id="business_profile_ownership_text" class="<?php 
									if(!empty($merchantarry)) { if (in_array('Others', $merchantarry)){?> <?php }else {?>by-default-hide <?php } }else { ?>by-default-hide <?php }?>" type="text" name="business_profile_ownership_text" placeholder="Others" value="<?php if(!empty($records['business_profile_ownership_text'])) { echo $records['business_profile_ownership_text']; }?>">
									
									<span id="error_business_profile_merchant" class="error-radio by-default-hide">You must select atleast one</span>
									</div>
									</div>
									<div class="input-group col-1"></div>
									<div class="input-group col-3">
									<h5> Cards accepted: </h5>
									<label class="inline">
										
										<span> <input type="radio" name="business_card_profile_r" value="1" <?php if(isset($records['business_card_profile_r'])) { if($records['business_card_profile_r']==1){ echo"checked";} } ?>>Yes </span>
										<span> <input type="radio" name="business_card_profile_r" value="0" <?php if(isset($records['business_card_profile_r'])) { if($records['business_card_profile_r']==0){ echo"checked";} } ?> > No </span>
										</label>
									<span id="cardid" class="<?php if(isset($records['business_card_profile_r'])) { if($records['business_card_profile_r']==0){ ?> by-default-hide-card  <?php }  if($records['business_card_profile_r']==1) { } }else{ ?>by-default-hide-card  <?php }?>">	
									<label><input  <?php if(!empty($cardarry)) { 
									if (count($cardarry)=='4'){ echo"checked";}}?> type='checkbox' id='cardCheckAll'>Check all</label>
									<?php foreach($card as $card){?>
										<label><input type="checkbox" name="business_card_profile[]" value="<?php echo $card->name;?>"  class='cardcheckboxes'   <?php if(!empty($cardarry)) { if (in_array($card->name, $cardarry)){ echo"checked";}}?>/><?php echo $card->name;?> </label>
									<?php } ?>
									</span>
									
									<span id="error_business_profile_card" class="error-radio by-default-hide">You must select atleast one</span>
									
									
									</div>
									
								 <br><br>
                                </div>
                                </div>
								<input type="button" name="previous" class="previous action-button-previous previous-step3" value="Previous" />
								<input name="business_profileBtn" id="business_profileBtn" type="submit" class="next1 action-button" value="Next">
                            </form>
							
							<form class="form-group fieldset" id="step5"  action="#" method="post" role="form" novalidate="" >
							  <div class="">
                                <div class="form-card row">
                                    <h2 class="fs-title">CASH ADVANCE</h2><br/><br/>	
									
									<div class="input-group col-12">
									<label>Amount requested: (We provide up to 2 times a companies gross monthly bank revenue).</label>
									<input  class="numbervalidation_1" type="text" name="cash_advance_amount" placeholder="Amount requested" required   value="<?php if(!empty($records['cash_advance_amount'])) { echo $records['cash_advance_amount']; }?>" />
									<span class="error-radio by-default-hide" id="error_cash_advance_amount">up to 8 digits.</span>
									</div>
									<div class="input-group col-6">
									<label>Average Visa/MasterCard monthly sales:</label>
									<input type="text" name="cash_advance_master_m_sales" placeholder=""  value="<?php if(!empty($records['cash_advance_master_m_sales'])) { echo $records['cash_advance_master_m_sales']; }?>" required />
									<span class="error-radio by-default-hide" id="error_cash_advance_master_m_sales">up to 8 digits.</span>
									</div>
									<div class="input-group col-6">
									<label>Average gross monthly sales:</label>
									<input type="text" name="cash_advance_average_g_m_sales" placeholder=""  value="<?php if(!empty($records['cash_advance_average_g_m_sales'])) { echo $records['cash_advance_average_g_m_sales']; }?>"  required />
									<span class="error-radio by-default-hide" id="error_cash_advance_average_g_m_sales">up to 8 digits.</span>
									</div>
									<div class="input-group col-6">
									<label>Average ticket size:</label>
									<input type="text" name="cash_advance_average_t_size" placeholder=""  value="<?php if(!empty($records['cash_advance_average_t_size'])) { echo $records['cash_advance_average_t_size']; }?>"  required />
									<span class="error-radio by-default-hide" id="error_cash_advance_average_t_size">up to 8 digits.</span>
									</div>
									

									<div class="input-group col-6"> 
									<label>Have you used a cash advance plan before?</label>
									
									<label class="inline">
										
										<span> <input type="radio" name="cash_advance_plan_before_r"  value="1" <?php if(isset($records['cash_advance_plan_before_r'])) { if($records['cash_advance_plan_before_r']==1){ echo"checked";} } ?>>Yes </span>
										<span> <input type="radio" name="cash_advance_plan_before_r" value="0" <?php if(isset($records['cash_advance_plan_before_r'])) { if($records['cash_advance_plan_before_r']==0){ echo"checked";} } ?>> No </span>
										
										</label>
										<span id="error_cash_advance_plan_before_r" style="display:none;" class="error-radio">You must select yes or no</span>	
									<!---->
									</div>
									
									
									
									
									
									<div class="input-group col-6 <?php if(isset($records['cash_advance_plan_before_r'])) { if($records['cash_advance_plan_before_r']==0){ ?> by-default-hide <?php }  if($records['cash_advance_plan_before_r']==1) { } }else{ ?>by-default-hide <?php }?>" id="cash_advance_company_use_id"> 
									<label>If so, what company did you use?</label>
									<input type="text"  id="cash_advance_company_use" name="cash_advance_company_use" placeholder="" value="<?php if(!empty($records['cash_advance_company_use'])) { echo $records['cash_advance_company_use']; }?>"    />
									</div>
									<div style="display:none;" class="input-group col-6 <?php if(isset($records['cash_advance_plan_before_r'])) { if($records['cash_advance_plan_before_r']==0){ ?> by-default-hide <?php }  if($records['cash_advance_plan_before_r']==1) { } }else{ ?>by-default-hide <?php }?>" id="cash_advance_plan_before_id">
									<label>Have you used a cash advance plan before Text?</label>
									<input type="text" id="cash_advance_plan_before" name="cash_advance_plan_before" placeholder="" value="<?php if(!empty($records['cash_advance_plan_before'])) { echo $records['cash_advance_plan_before']; }?>"  />
									</div>
									
									
									
								
									<div class="input-group col-6"> 
									<label>Original Balance:</label>
									<input type="text" name="cash_advance_o_balance" placeholder=""  value="<?php if(!empty($records['cash_advance_o_balance'])) { echo $records['cash_advance_o_balance']; }?>"  required />
									<span class="error-radio by-default-hide" id="error_cash_advance_o_balance">up to 8 digits.</span>
									</div>
									<div class="input-group col-6"> 
									<label>Current Balance? (Provide Original Contract)</label>
									<input type="text" name="cash_advance_c_balance" placeholder=""   value="<?php if(!empty($records['cash_advance_c_balance'])) { echo $records['cash_advance_c_balance']; }?>" required />
									<span class="error-radio by-default-hide" id="error_cash_advance_c_balance">up to 8 digits.</span>
									</div>
									
									
									<div class="input-group col-6"> 
									<label>Current payment or daily holdback%</label>
									<input type="text" name="cash_advance_c_payment" placeholder=""  value="<?php if(!empty($records['cash_advance_c_payment'])) { echo $records['cash_advance_c_payment']; }?>"  required />
									</div>								
                                </div>
                                </div>
								<input type="button" name="previous" class="previous action-button-previous previous-step4" value="Previous" />
								<input name="cashadvancdBtn" id="cashadvancdBtn" type="submit" class="next1 action-button" value="Next">
                            </form>
							  <form class="form-group fieldset" id="step6"  action="#" method="post" role="form" novalidate=""  >
							   <div class="">
                                <div class="form-card row">
                                    <h2 class="fs-title">OTHER INFORMATION</h2><br/><br/>	
									<div class="input-group col-12">
									<label>Current Credit Card Processing Company:</label>
									<textarea name="description1" required ><?php if(!empty($records['description1'])) { echo $records['description1']; }?></textarea>
									</div>
									<div class="input-group col-12">
									<label>Any additional details you would like to share with us?:</label>
									<textarea name="description2"  ><?php if(!empty($records['description2'])) { echo $records['description2']; }?></textarea>
									</div>
								</div>
								</div>
								<input type="button" name="previous" class="previous action-button-previous previous-step5" value="Previous" />
								<input name="otherinformationBtn" id="otherinformationBtn" type="submit" class="next1 action-button" value="Next">
                            </form>
							
							 <form class="form-group fieldset" id="step7"  action="#" method="post" role="form" novalidate=""  >
							   <div class="">
                                <div class="form-card row">
                                    <h2 class="fs-title">SIGNATURE</h2><br/><br/>	
									<p>By signing below, the Merchant and its owners/principals:<br> (1) certify that all information on and documents submitted in connection with this Application are true, correct, and complete; <br>
									(2) authorize M&P, its agents, partners, and lenders to receive credit reports and any other information regarding the Merchant and its owners/principals from third parties, in order to verify any information provided on the Application.</p>
									
									<div class="input-group col-6">
										<label for="myfile">Bank statement 1:</label>
										<div class="img-zone text-center" id="img-zone">
											<div class="img-drop">
												<span class="btn-file">
													<input rel="1" type="file" multiple="" accept="image/*">
												</span>
											</div>
										</div>
										</div>
										<div class="input-group col-6">
										<label for="myfile">Bank statement 2:</label>
										<div class="img-zone text-center" id="img-zone-1">
											<div class="img-drop">
												<span class="btn-file">
													<input rel="2" type="file" multiple="" accept="image/*">
												</span>
											</div>
										</div>
										</div>
										<div class="input-group col-6">
										<label for="myfile">Bank statement 3:</label>
										<div class="img-zone text-center" id="img-zone-2">
											<div class="img-drop">
												<span class="btn-file">
													<input rel="3" type="file" multiple="" accept="image/*">
												</span>
											</div>
										</div>
										</div>
										<div class="input-group col-6">
										<label for="myfile">Bank statement 4:</label>
										<div class="img-zone text-center" id="img-zone-3">
											<div class="img-drop">
												<span class="btn-file">
													<input rel="4" type="file" multiple="" accept="image/*">
												</span>
											</div>
										</div>
										</div>
										<div class="input-group col-6">
										<label for="myfile">Bank statement 5:</label>
										<div class="img-zone text-center" id="img-zone-4">
											<div class="img-drop">
												<span class="btn-file">
													<input rel="5" type="file" multiple="" accept="image/*">
												</span>
											</div>
										</div>
										</div>
										<div class="input-group col-6">
										<label for="myfile">Bank statement 6:</label>
										<div class="img-zone text-center" id="img-zone-5">
											<div class="img-drop">
												<span class="btn-file">
													<input rel="6" type="file" multiple="" accept="image/*">
												</span>
											</div>
										</div>
										</div>
										<div class="input-group col-6">
										<label for="myfile">Driver's license or other I.D:</label>
										<div class="img-zone text-center" id="img-zone-6">
											<div class="img-drop">
												<span class="btn-file">
													<input rel="7" type="file" multiple="" accept="image/*">
												</span>
											</div>
										</div>
										</div>
										<div class="input-group col-6">
										<label for="myfile">Voided business check check:</label>
										<div class="img-zone text-center" id="img-zone-7">
											<div class="img-drop">
												<span class="btn-file">
													<input rel="8" type="file" multiple="" accept="image/*">
												</span>
											</div>
										</div>
										</div>
									<div class="progress hidden">
										<div style="width: 0%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="0" role="progressbar" class="progress-bar progress-bar-success progress-bar-striped active">
											<span class="sr-only">0% Complete</span>
										</div>
										 <span id="sr-only-number">0%</span>
									</div>
										
									<div id="galleryName" class="row"> </div>
									<div id="img-preview" class="row"> </div>	
									<span id="imageextension" style="display:none;" class="error-image error-cls">Sorry, invalid extension. Please upload  only these extension gif, png, jpg, jpeg ,pdf, doc</span>
									<span id="imagefsize"  class="error-image error-cls" style="display:none;">File size too large! Please upload less than 1MB</span>									
									</div>
									<div class="input-group col-6">
										<label for="myfile">Date:</label>
										<input class="datepicker1" type="date" 
										id="signature_date" name="signature_date" required >	
										<span class="error-radio" style="display:none;" id="signature_date_error">date format not vaild</span>										
									</div>
									<div class="input-group col-6">
										<span> Additional For To Upload :</span>
										<span><label> <input type="radio" name="additional_for_to_upload_r" value="1">Yes </label></span>
										<span><label> <input type="radio" name="additional_for_to_upload_r" value="0" > No</label></span>
									</div>
									<div id="additional_for_to_upload" class="input-group col-6" style="display:none;">
										
										<div class="img-zone text-center" id="img-zone-8">
											<div class="img-drop">
												<span class="btn-file">
													<input rel="9" type="file" multiple="" accept="image/*">
												</span>
											</div>
										</div>
									</div>
									<div class="input-group col-12">
										<label for="myfile">Signature:</label>
										<div id="sig" class="form-control" ></div>	
										
										<textarea id="signature64" name="signature" style="display:none" required></textarea>								
									</div>
									
									<div class="input-group col-12">
									<button class="btn btn-danger"  id="clear">Reset Signature</button>
									<span class="error-cls" id="error-signature" style="display:none;">Please upload your signature first</span>
									</div>
								</div>
								
								<input type="button" name="previous" class="previous action-button-previous previous-step6" value="Previous" />
								<input name="signaturedBtn" id="signaturedBtn" type="submit" class="next1 action-button" value="Next">
                            </form>
							
							<form class="form-group fieldset" id="step8"  action="#" method="post" role="form" novalidate=""  >
							   <div class="">
                                <div class="form-card row">
                                    	
									<p>Thanks for submit all details.your all information has been addes succesully. admin will contact shortly as soon as possible</p>
									
									</div>
								</div>
								
                            </form>
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
  </div>
  