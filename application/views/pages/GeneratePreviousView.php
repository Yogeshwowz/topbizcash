  <div class="" id="step8div">
                                    <div class="form-card row">
                                        <h2 class="fs-title col-12">STEP 1 DETAILS</h2>
                                        <div class="input-group col-6">
                                            <label>Legal/corporate name :</label>
                                            <p><?php if(!empty($records['business_name'])) { echo $records['business_name'];
								}?></p>
									    </div>
    									<div class="input-group col-3 inline">
    									    <label>DBA :</label>
												<p><?php if(isset($records['business_dba_r'])) { 
												if($records['business_dba_r']==1){ echo "Yes";} 
												if($records['business_dba_r']==0){ echo "No";} 
												} ?></p>
    									</div>
										<div class="input-group col-3 inline">
										<?php if(isset($records['business_dba_r'])) { 
										if($records['business_dba_r']==1){?>

										<label>DBA :</label><p><?php if(!empty($records['business_dba'])) { echo $records['business_dba']; }?></p>

										<?php }
										}?></div>
					
    									<div class="input-group col-6">
                                            <label>Physical address :</label>
                                            <p><?php if(!empty($records['business_physical_address'])) { echo $records['business_physical_address']; }?></p>
									    </div>
									    <div class="input-group col-2">
                                            <label>City :</label>
                                            <p><?php if(!empty($records['business_city'])) { echo $records['business_city']; }?></p>
									    </div>
									    <div class="input-group col-2">
                                            <label>State :</label>
                                            <p><?php if(!empty($records['business_state'])) { echo $records['business_state']; }?></p>
									    </div>
									    <div class="input-group col-2">
                                            <label>Zip :</label>
                                            <p><?php if(!empty($records['business_zip'])) { echo $records['business_zip']; }?></p>
									    </div>
									    <div class="input-group col-3">
                                            <label>Business phone :</label>
                                            <p><?php if(!empty($records['business_phone'])) { echo $records['business_phone']; }?></p>
									    </div>
									    <div class="input-group col-3">
                                            <label>Fax :</label>
											<p><?php if(isset($records['business_fax_r'])) { 
											if($records['business_fax_r']==1){ echo "Yes";} 
											if($records['business_fax_r']==0){ echo "No";} 
											} ?></p>
									    </div>
									    <div class="input-group col-3">
									<?php if(isset($records['business_fax_r'])) { 
									if($records['business_fax_r']==1){?>
									<label>Fax No :</label>
									<?php }
									}?>
								<?php if(isset($records['business_fax_r'])) { 
								if($records['business_fax_r']==1){?>
								<p><?php if(!empty($records['business_fax'])) { echo $records['business_fax']; }?><p>
								<?php }
								}?>
									    </div>
									    <div class="input-group col-3">
                                            <label>Federal tax ID :</label>
                                            <p><?php if(!empty($records['business_federal_tax_id'])) { echo $records['business_federal_tax_id']; }?></p>
									    </div>
									    <div class="input-group col-3">
                                            <label>Contact :</label>
                                            <p><?php if(!empty($records['business_contact_no'])) { echo $records['business_contact_no']; }?></p>
									    </div>
									    <div class="input-group col-3">
                                            <label>E-mail :</label>
                                            <p><?php if(!empty($records['business_email'])) { echo $records['business_email']; }?></p>
									    </div>
									    <div class="input-group col-3">
                                            <label>Website :</label>
												<p><?php if(isset($records['business_website_r'])) { 
												if($records['business_website_r']==1){ echo "Yes";} 
												if($records['business_website_r']==0){ echo "No";} 
												} ?></p>
									    </div>
									    <div class="input-group col-3">
											<?php if(isset($records['business_website_r'])) { 
												if($records['business_website_r']==1){?> 		<label>Website :</label><?php }
												}?>
											<?php if(isset($records['business_website_r'])) { 
											if($records['business_website_r']==1){?>
											<p><?php if(!empty($records['business_website'])) { echo $records['business_website']; }?></p>
											<?php }
											}?>
									    </div>
									    <div class="input-group col-4">
                                            <label>Date business started :</label>
                                            <p><?php if(!empty($records['business_date'])) { echo $records['business_date']; }?></p>
									    </div>
									    <div class="input-group col-4">
                                            <label>Length of ownership Year :</label>
                                            <p><?php if(!empty($records['business_length_of_ownership_year'])) { echo $records['business_length_of_ownership_year']; }?></p>
									    </div>
									    <div class="input-group col-4">
                                            <label>Length of ownership Month :</label>
                                            <p><?php if(!empty($records['business_length_of_ownership_month'])) { echo $records['business_length_of_ownership_month']; }?></p>
									    </div>
									    <div class="input-group col-4">
                                            <label>Years at location :</label>
                                            <p><?php if(!empty($records['business_year_at_location_month_year'])) { echo $records['business_year_at_location_month_year']; }?></p>
									    </div>
									    <div class="input-group col-4">
                                            <label>Months at location :</label>
                                            <p><?php if(!empty($records['business_year_at_location_month'])) { echo $records['business_year_at_location_month']; }?></p>
									    </div>
									    <div class="input-group col-4">
                                            <label>No. of location :</label>
                                            <p><?php if(!empty($records['business_locations'])) { echo $records['business_locations']; }?></p>
									    </div>
									    
									    <h2 class="fs-title col-12">STEP 2 DETAILS</h2>
										 <div class="input-group col-12">
                                            <label>Do you own this business? :</label>
											<p><?php if(isset($records['ownership_r'])) { 
											if($records['ownership_r']==1){ echo "No";} 
											if($records['ownership_r']==0){ echo "Yes";} 
											} ?></p>
									    </div>
										
										<?php if(isset($records['ownership_r'])) { 
											if($records['ownership_r']==0){?>
									    <div class="input-group col-6">
                                            <label>Name :</label>
                                            <p><?php if(!empty($records['ownership_name'])) { echo $records['ownership_name']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Contact phone number :</label>
                                            <p><?php if(!empty($records['ownership_contact_phone_number'])) { echo $records['ownership_contact_phone_number']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Home address :</label>
                                            <p><?php if(!empty($records['ownership_adddress'])) { echo $records['ownership_adddress']; }?></p>
									    </div>
									    <div class="input-group col-2">
                                            <label>City :</label>
                                            <p><?php if(!empty($records['ownership_city'])) { echo $records['ownership_city']; }?></p>
									    </div>
									    <div class="input-group col-2">
                                            <label>State :</label>
                                            <p><?php if(!empty($records['ownership_state'])) { echo $records['ownership_state']; }?></p>
									    </div>
									    <div class="input-group col-2">
                                            <label>Zip :</label>
                                            <p><?php if(!empty($records['ownership_zip'])) { echo $records['ownership_zip']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Date of birth :</label>
                                            <p><?php if(!empty($records['ownership_dob'])) { echo $records['ownership_dob']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>SSN :</label>
                                            <p><?php if(!empty($records['ownership_ssn'])) { echo $records['ownership_ssn']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>% Ownership of company :</label>
                                            <p><?php if(!empty($records['ownership_of_company'])) { echo $records['ownership_of_company']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Title :</label>
                                            <p><?php if(!empty($records['ownership_title'])) { echo $records['ownership_title']; }?></p>
									    </div>
									    <?php }
										}					
										?>
									    <h2 class="fs-title col-12">STEP 3 DETAILS</h2>
									    <div class="input-group col-6">
                                            <label>Landlord name :</label>
                                            <p><?php if(!empty($records['landlord_name'])) { echo $records['landlord_name']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Contact :</label>
                                            <p><?php if(!empty($records['landlord_contact'])) { echo $records['landlord_contact']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Monthly rent :</label>
                                            <p><?php if(!empty($records['landlord_m_rent'])) { echo $records['landlord_m_rent']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Phone :</label>
                                            <p><?php if(!empty($records['landlord_phone_no'])) { echo $records['landlord_phone_no']; }?></p>
									    </div>
									    
									    <h2 class="fs-title col-12">STEP 4 DETAILS</h2>
									    <div class="input-group col-4">
                                            <label>Ownership :</label>
                                            <p><?php  if(!empty($records['business_profile_ownership'])) {
										 $ownership_arr = unserialize($records['business_profile_ownership']);
										 echo $ownership_arr[0];
											}?></p>
									    </div>
									    <div class="input-group col-4">
                                            <label>Merchant type :</label>
										<p><?php 
										if(!empty($records['business_merchant_profile'])) {
										$merchantarry = unserialize($records['business_merchant_profile']);
										echo implode(',',$merchantarry);			 
										}
										?></p>
										<p><?php if(in_array('Others',$merchantarry)){
											if(!empty($records['business_profile_ownership_text'])) {
												echo $records['business_profile_ownership_text'];
											}
										}?></p>
									    </div>
									    <div class="input-group col-4">
                                            <label>Cards accepted :</label>
												<p><?php if(isset($records['business_card_profile_r'])) { 
												if($records['business_card_profile_r']==1){ 
												echo "Yes";
												echo"</p><p>";
												if(!empty($records['business_card_profile'])) {
												$cardarry = unserialize($records['business_card_profile']);
												echo implode(',',$cardarry);	
												}

												}
												if($records['business_card_profile_r']==0){
												echo "No";						  
												}

												} ?></p>
									    </div>
									    
									    <h2 class="fs-title col-12">STEP 5 DETAILS</h2>
									    <div class="input-group col-12">
                                            <label>Amount requested :</label>
                                            <p><?php if(!empty($records['cash_advance_amount'])) { echo $records['cash_advance_amount']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Average Visa/MasterCard monthly sales :</label>
                                            <p><?php if(!empty($records['cash_advance_master_m_sales'])) { echo $records['cash_advance_master_m_sales']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Average gross monthly sales :</label>
                                            <p><?php if(!empty($records['cash_advance_average_g_m_sales'])) { echo $records['cash_advance_average_g_m_sales']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Average ticket size :</label>
                                            <p><?php if(!empty($records['cash_advance_average_t_size'])) { echo $records['cash_advance_average_t_size']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Have you used a cash advance plan before? :</label>
										<p><?php 
										if(isset($records['cash_advance_plan_before_r'])) { 	
										if($records['cash_advance_plan_before_r']==1){ echo"Yes";} 
										if($records['cash_advance_plan_before_r']==0){ echo"No";} 
										}?></p>
									    </div>
									    <div class="input-group col-6">
										<?php if(isset($records['cash_advance_plan_before_r'])) { 
										if($records['cash_advance_plan_before_r']==1){?>
										<label>If so, what company did you use? :</label><?php }
										}?>
										<?php if(isset($records['cash_advance_plan_before_r'])) { 
										if($records['cash_advance_plan_before_r']==1){?>
										<p><?php if(!empty($records['cash_advance_company_use'])) { echo $records['cash_advance_company_use']; }?></p>
										<?php }
										}?>
									    </div>
									    <div class="input-group col-6">
                                            <label>Original Balance :</label>
                                            <p><?php if(!empty($records['cash_advance_o_balance'])) { echo $records['cash_advance_o_balance']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Current Balance :</label>
                                            <p><?php if(!empty($records['cash_advance_c_balance'])) { echo $records['cash_advance_c_balance']; }?></p>
									    </div>
									    <div class="input-group col-6">
                                            <label>Current payment or daily holdback% :</label>
                                            <p><?php if(!empty($records['cash_advance_c_payment'])) { echo $records['cash_advance_c_payment']; }?></p>
									    </div>	
									    
									    <h2 class="fs-title col-12">STEP 6 DETAILS</h2>
									    <div class="input-group col-12">
                                            <label>Current Credit Card Processing Company :</label>
                                            <p><?php if(!empty($records['description1'])) { echo $records['description1']; }?></p>
									    </div>
									    <div class="input-group col-12">
                                            <label>Any additional details you would like to share with us? :</label>
                                            <p><?php if(!empty($records['description2'])) { echo $records['description2']; }?></p>
									    </div>
									    
									    <h2 class="fs-title col-12">STEP 7 DETAILS</h2>
										<div class="input-group col-6">
                                            <label>Signature :</label>
                                            <p><img width="100" height="100" src="<?php echo base_url()."assets/upload/signature/".$records['signature']; ?>"></p>
									    </div>
										<div class="input-group col-6">
                                            <label>Date :</label>
                                            <p><?php if(!empty($records['signature_date'])) { echo $records['signature_date']; }?></p>
									    </div>
										
										
										
									    <div class="input-group col-6">
                                            <label>Bank statement 1 :</label>
											<?php if(!empty($records['myfile'])){ ?>
                                            <p><a rel="external"  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile']; ?>">View</a></p>
											<?php }else{ echo"N/A"; }?>
									    </div>
									    <div class="input-group col-6">
                                            <label>Bank statement 2 :</label>
											<?php if(!empty($records['myfile2'])){ ?>
                                            <p><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile2']; ?>">View</a></p>
											<?php }else{ echo"N/A"; }; ?>
									    </div>
									    <div class="input-group col-6">
                                            <label>Bank statement 3 :</label>
											<?php if(!empty($records['myfile3'])){ ?>
                                            <p><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile3']; ?>">View</a></p>
											<?php }else{ echo"N/A"; }; ?>
									    </div>
									    <div class="input-group col-6">
                                            <label>Bank statement 4 :</label>
											<?php if(!empty($records['myfile4'])){ ?>
                                            <p><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile4']; ?>">View</a></p>
											<?php }else{ echo"N/A"; }; ?>
									    </div>
									    <div class="input-group col-6">
                                            <label>Bank statement 5 :</label>
											<?php if(!empty($records['myfile5'])){ ?>
                                            <p><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile5']; ?>">View</a></p>
											<?php }else{ echo"N/A"; }; ?>
									    </div>
									    <div class="input-group col-6">
                                            <label>Bank statement 6 :</label>
											<?php if(!empty($records['myfile6'])){ ?>
                                            <p><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile6']; ?>">View</a></p>
											<?php }else{ echo"N/A"; }; ?>
									    </div>
									    <div class="input-group col-6">
                                            <label>Driver's license or other I.D :</label>
											<?php if(!empty($records['myfile7'])){ ?>
                                            <p><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile7']; ?>">View</a></p>
											<?php }else{ echo"N/A"; }; ?>
									    </div>
									    <div class="input-group col-6">
                                            <label>Voided business check check :</label>
											<?php if(!empty($records['myfile8'])){ ?>
                                            <p><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile8']; ?>">View</a></p>
											<?php }else{ echo"N/A"; }; ?>
									    </div>
									   
									    <div class="input-group col-6">
                                            <label>Additional For To Upload :</label>
                                            <p><?php 
										if(isset($records['additional_for_to_upload_r'])) { 	
										if($records['additional_for_to_upload_r']==1){ echo"Yes";} 
										if($records['additional_for_to_upload_r']==0){ echo"No";} 
										}?></p>
									    </div>
									    	   <div class="input-group col-lg-12 additionalcl">
										<?php if(isset($records['additional_for_to_upload_r'])) { 
										if($records['additional_for_to_upload_r']==1){?>
                                            <label>Additional files for upload :</label>
											<?php 
											 
											foreach($additional_files as $value){
											    $showpath =base_url()."assets/img/";
												$ext = pathinfo($value['files_name']);
												if($ext['extension']=='docx' || $ext['extension']=='doc'){ $nameicon = "word.png";}
												if($ext['extension']=='jpg' || $ext['extension']=='gif' || $ext['extension']=='png'){ $nameicon = "img-icon.png";}
												if($ext['extension']=='pdf'){ $nameicon = "pdf-icon.png";}?>
											<div  class="col-md-2" id="add_files_<?php echo $value['additional_id']; ?>">
											<div class="thumbnail ">
											<img  src="<?php echo $showpath.$nameicon; ?>" />
											</div></div>
											
											<?php 		
											}
											
											?>
										<?php } }?>
									    </div>
									   
								    </div>
								    <input type="button" name="previous" class="previous action-button-previous previous-step7" value="Previous" />
								<input name="perviousBtn" id="perviousBtn" type="submit" class="next1 action-button" value="Submit">
								</div>