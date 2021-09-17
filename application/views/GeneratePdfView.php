<?php //echo"<pre>"; print_r($records);?>
<div class="container">
   <!-- MultiStep Form -->
   <div class="container-fluid" id="grad1">
      <div class="row justify-content-center mt-0 "  style="padding: 0 20px;">
         <h2 class="text-center"  style="text-align:center;"><strong>Loan Application Processing Form</strong></h2>
         <p class="text-center" style="text-align:center;">Fill all form field to go to next step</p>
         <div id="msform1" class="PDF" >
            <div class="row">
               <h2 style="text-align:center;">BUSINESS INFORMATION</h2>
               <table style="width:100%;">
                  <tr>
                     <th style="text-align:left;">Legal/corporate name:</th>
                     <th style="text-align:left;">DBA:</th>
                     
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['business_name'])) { echo $records['business_name'];
								}?></td>
                     <td><?php if(isset($records['business_dba_r'])) { 
						if($records['business_dba_r']==1){ echo "Yes";} 
						if($records['business_dba_r']==0){ echo "No";} 
					 } ?></td>
					 <?php if(isset($records['business_dba_r'])) { 
					 if($records['business_dba_r']==1){?>
					  <td><?php if(!empty($records['business_dba'])) { echo $records['business_dba']; }?></td>
					 <?php }
					 }?>
					
                  </tr>
                  <tr>
                     <td><b>Physical address:</b></td>
                     <td><b>City:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['business_physical_address'])) { echo $records['business_physical_address']; }?></td>
                     <td><?php if(!empty($records['business_city'])) { echo $records['business_city']; }?></td>
                  </tr>
                  <tr>
                     <td><b>State:</b></td>
                     <td><b>Zip:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['business_state'])) { echo $records['business_state']; }?></td>
                     <td><?php if(!empty($records['business_zip'])) { echo $records['business_zip']; }?></td>
                  </tr>
                  <tr>
                     <td><b>Business phone:</b></td>
                     <td><b>Fax:</b></td>
                      <?php if(isset($records['business_fax_r'])) { 
					 if($records['business_fax_r']==1){?>
					  <td><b>Fax No:</b></td>
					 <?php }
					 }?>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['business_phone'])) { echo $records['business_phone']; }?></td>
                     <td><?php if(isset($records['business_fax_r'])) { 
						if($records['business_fax_r']==1){ echo "Yes";} 
						if($records['business_fax_r']==0){ echo "No";} 
					 } ?></td>
					  <?php if(isset($records['business_fax_r'])) { 
					 if($records['business_fax_r']==1){?>
					  <td><?php if(!empty($records['business_fax'])) { echo $records['business_fax']; }?></td>
					 <?php }
					 }?>
                  </tr>
                  <tr>
                     <td><b>Federal tax ID:</b></td>
                     <td><b>Contact:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['business_federal_tax_id'])) { echo $records['business_federal_tax_id']; }?></td>
                     <td><?php if(!empty($records['business_contact_no'])) { echo $records['business_contact_no']; }?></td>
                  </tr>
                  <tr>
                     <td><b>E-mail:</b></td>
                     <td><b>Website:</b></td>
					  <?php if(isset($records['business_website_r'])) { 
					 if($records['business_website_r']==1){?>
					  <td><b>Website Name:</b></td>
					 <?php }
					 }?>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['business_email'])) { echo $records['business_email']; }?></td>
                     <td><?php if(isset($records['business_website_r'])) { 
						if($records['business_website_r']==1){ echo "Yes";} 
						if($records['business_website_r']==0){ echo "No";} 
					 } ?></td>
					 <?php if(isset($records['business_website_r'])) { 
					 if($records['business_website_r']==1){?>
					  <td><?php if(!empty($records['business_website'])) { echo $records['business_website']; }?></td>
					 <?php }
					 }?>
                  </tr>
                  <tr>
                     <td><b>Date business started:</b></td>
                     <td><b>Length of ownership Year:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['business_date'])) { echo $records['business_date']; }?></td>
                     <td><?php if(!empty($records['business_length_of_ownership_year'])) { echo $records['business_length_of_ownership_year']; }?></td>
                  </tr>
                  <tr>
                     <td><b>Length of ownership Month:</b></td>
                     <td><b>Years at location year:</b></td>
                   
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['business_length_of_ownership_month'])) { echo $records['business_length_of_ownership_month']; }?></td>
                     <td><?php if(!empty($records['business_year_at_location_month_year'])) { echo $records['business_year_at_location_month_year']; }?></td>
                  </tr>
				  <tr>
                     <td><b>Length of ownership Month:</b></td>
                     <td><b>No of Location:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['business_year_at_location_month'])) { echo $records['business_year_at_location_month']; }?></td>
                     <td><?php if(!empty($records['business_locations'])) { echo $records['business_locations']; }?></td>
                  </tr>
				  
                  <tr>
                     <th colspan="3">
                        <hr/>
                     </th>
                  </tr>
                  <tr>
                     <th colspan="3">
                        <h2  style="text-align:center;">OWNERSHIP</h2>
                     </th>
                  </tr>
				  <tr>
                     <td><b>OWNERSHIP:</b></td>
                     <td><?php if(isset($records['ownership_r'])) { 
						if($records['ownership_r']==1){ echo "No";} 
						if($records['ownership_r']==0){ echo "Yes";} 
					 } ?></td>
                  </tr>
				 <?php if(isset($records['ownership_r'])) { 
						if($records['ownership_r']==0){?>
                  <tr>
                     <td><b>Name:</b></td>
                     <td><b>Contact phone number:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['ownership_name'])) { echo $records['ownership_name']; }?></td>
                     <td><?php if(!empty($records['ownership_contact_phone_number'])) { echo $records['ownership_contact_phone_number']; }?></td>
                  </tr>
                  <tr>
                     <td><b>Home address:</b></td>
                     <td><b>City:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['ownership_adddress'])) { echo $records['ownership_adddress']; }?></td>
                     <td><?php if(!empty($records['ownership_city'])) { echo $records['ownership_city']; }?></td>
                  </tr>
                  <tr>
                     <td><b>State:</b></td>
                     <td><b>Zip:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['ownership_state'])) { echo $records['ownership_state']; }?></td>
                     <td><?php if(!empty($records['ownership_zip'])) { echo $records['ownership_zip']; }?></td>
                  </tr>
                  <tr>
                     <td><b>Date of birth:</b></td>
                     <td><b>SSN:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['ownership_dob'])) { echo $records['ownership_dob']; }?></td>
                     <td><?php if(!empty($records['ownership_ssn'])) { echo $records['ownership_ssn']; }?></td>
                  </tr>
                  <tr>
                     <td><b>% Ownership of company:</b></td>
                     <td><b>Title:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['ownership_of_company'])) { echo $records['ownership_of_company']; }?></td>
                     <td><?php if(!empty($records['ownership_title'])) { echo $records['ownership_title']; }?></td>
                  </tr>
                  
                  <tr>
                     <th colspan="3">
                        <hr/>
                     </th>
                  </tr>
					<?php }
				 }					?>
                  <tr>
                     <th colspan="3">
                        <h2  style="text-align:center;">LEASE <small>(Landlord Information)</small></h2>
                     </th>
                  </tr>
                  <tr>
                     <td><b>Landlord Name:</b></td>
                     <td><b>Contact</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['landlord_name'])) { echo $records['landlord_name']; }?></td>
                     <td><?php if(!empty($records['landlord_contact'])) { echo $records['landlord_contact']; }?></td>
                  </tr>
                  <tr>
                     <td><b>Monthly rent:</b></td>
                     <td><b>Phone:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['landlord_m_rent'])) { echo $records['landlord_m_rent']; }?></td>
                     <td><?php if(!empty($records['landlord_phone_no'])) { echo $records['landlord_phone_no']; }?></td>
                  </tr>
                  <tr>
                     <th colspan="3">
                        <hr/>
                     </th>
                  </tr>
                  <tr>
                     <th colspan="3">
                        <h2  style="text-align:center;">BUSINESS PROFILE</h2>
                     </th>
                  </tr>
                  <tr>
                     <td><b>Ownership:</b></td>
                     <td><b>Merchant type:</b></td>
                  </tr>
                  <tr>
                     <td><?php  if(!empty($records['business_profile_ownership'])) {
										 $ownership_arr = unserialize($records['business_profile_ownership']);
										 echo $ownership_arr[0];
								}?></td>
                     <td><?php 
					 if(!empty($records['business_merchant_profile'])) {
										 $merchantarry = unserialize($records['business_merchant_profile']);
							echo implode(',',$merchantarry);			 
					}
					?>
					<p><?php if(in_array('Others',$merchantarry)){
											if(!empty($records['business_profile_ownership_text'])) {
												echo $records['business_profile_ownership_text'];
											}
										}?></p>
					</td>
                  </tr>
                  <tr>
                     <td><b>Cards accepted:</b></td>
                  </tr>
                  <tr>
                     <td>
					 <?php if(isset($records['business_card_profile_r'])) { 
					 if($records['business_card_profile_r']==1){ 
					  echo "Yes";
					  echo"<br>";
						 if(!empty($records['business_card_profile'])) {
											 $cardarry = unserialize($records['business_card_profile']);
											 echo implode(',',$cardarry);	
						}
					 
					 }
					  if($records['business_card_profile_r']==0){
						echo "No";						  
					  }
					 
					 } ?>
					 
					 
					 <?php 
					   
					 ?></td>
                  </tr>
                  <tr>
                     <th colspan="3">
                        <hr/>
                     </th>
                  </tr>
                  <tr>
                     <th colspan="3">
                        <h2  style="text-align:center;">CASH ADVANCE</h2>
                     </th>
                  </tr>
                  <tr>
                     <td colspan="3"><b>Amount requested: (We provide up to 2 times a companies gross monthly bank revenue).</b></td>
                  </tr>
                  <tr>
                     <td colspan="3"><?php if(!empty($records['cash_advance_amount'])) { echo $records['cash_advance_amount']; }?></td>
                  </tr>
                  <tr>
                     <td><b>Average Visa/MasterCard monthly sales:</b></td>
                     <td><b>Average gross monthly sales:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['cash_advance_master_m_sales'])) { echo $records['cash_advance_master_m_sales']; }?></td>
                     <td><?php if(!empty($records['cash_advance_average_g_m_sales'])) { echo $records['cash_advance_average_g_m_sales']; }?></td>
                  </tr>
                  <tr>
                     <td><b>Average ticket size:</b></td>
                     <td><b>Have you used a cash advance plan before?</b></td>
					 <?php if(isset($records['cash_advance_plan_before_r'])) { 
					 if($records['cash_advance_plan_before_r']==1){?>
					  <td><b>If so, what company did you use?</b></td>
					 <?php }
					 }?>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['cash_advance_average_t_size'])) { echo $records['cash_advance_average_t_size']; }?></td>
                     <td><?php 
					 if(isset($records['cash_advance_plan_before_r'])) { 	
						if($records['cash_advance_plan_before_r']==1){ echo"Yes";} 
						if($records['cash_advance_plan_before_r']==0){ echo"No";} 
					}?></td>
					<?php if(isset($records['cash_advance_plan_before_r'])) { 
					 if($records['cash_advance_plan_before_r']==1){?>
					  <td><?php if(!empty($records['cash_advance_company_use'])) { echo $records['cash_advance_company_use']; }?></td>
					 <?php }
					 }?>
                  </tr>
                  <tr>
                     <td><b>Original Balance:</b></td>
                     <td><b>Current Balance? (Provide Original Contract):</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['cash_advance_o_balance'])) { echo $records['cash_advance_o_balance']; }?></td>
                     <td><?php if(!empty($records['cash_advance_c_balance'])) { echo $records['cash_advance_c_balance']; }?></td>
                  </tr>
                  <tr>
                     
                     <td><b>Current payment or daily holdback%:</b></td>
                  </tr>
                  <tr>
                     <td><?php if(!empty($records['cash_advance_c_payment'])) { echo $records['cash_advance_c_payment']; }?></td>
                     
                  </tr>
                  <tr>
                     <th colspan="3">
                        <hr/>
                     </th>
                  </tr>
                  <tr>
                     <th colspan="3">
                        <h2  style="text-align:center;">OTHER INFORMATION</h2>
                     </th>
                  </tr>
                  <tr>
                     <td colspan="3"><b>Current Credit Card Processing Company:</b></td>
                  </tr>
                  <tr>
                     <td colspan="3"><?php if(!empty($records['description1'])) { echo $records['description1']; }?></td>
                  </tr>
				   <tr>
                     <td colspan="3"><b>Any additional details you would like to share with us?:</b></td>
                  </tr>
                  <tr>
                     <td colspan="3"><?php if(!empty($records['description2'])) { echo $records['description2']; }?></td>
                  </tr>
                  <tr>
                     <th colspan="3">
                        <hr/>
                     </th>
                  </tr>
                  <tr>
                     <th colspan="3">
                        <h2  style="text-align:center;">SIGNATURE</h2>
                     </th>
                  </tr>
                  <tr>
                     <td colspan="3"><b>By signing below, the Merchant and its owners/principals: <br>
					 (1) certify that all information on and documents submitted in connection with this Application are true, correct, and complete; <br> (2) authorize M&amp;P, its agents, partners, and lenders to receive credit reports and any other information regarding the Merchant and its owners/principals from third parties, in order to verify any information provided on the Application.</b></td>
                  </tr>
                  <tr>
                     <td colspan="3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</td>
                  </tr>
                  <tr>
                     <td><b>Signature</b></td>
                     <td><b>Date</b></td>
                  </tr>
                  <tr>
				  
                     <td>
					 <img width="100" height="100" src="<?php echo base_url()."assets/upload/signature/".$records['signature']; ?>">
					 </td>
					 <td>
					 <?php if(!empty($records['signature_date'])) { echo $records['signature_date']; }?></td>
                  </tr>
				  <tr>
                     <td><b>Bank statement 1</b></td>
                     <td><b>Bank statement 2</b></td>
                     <td><b>Bank statement 3</b></td>
                    
                  </tr>
				  <tr>
                     <td>
					 <?php if(!empty($records['myfile'])) {?><a rel="external"  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile']; ?>">View</a>
					 <?php } else { echo"N/a";}?>
					 </td>
                     <td> <?php if(!empty($records['myfile2'])) {?><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile2']; ?>">View</a><?php } else { echo"N/a";}?></td>
					<td> <?php if(!empty($records['myfile3'])) {?><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile3']; ?>">View</a> <?php } else { echo"N/a";}?></td>
					  
                  </tr>
				  <tr>
                     
                     <td><b>Bank statement 4</b></td>
                     <td><b>Bank statement 5</b></td>
                     <td><b>Bank statement 6</b></td>
                  </tr>
				  <tr>
                     <td> <?php if(!empty($records['myfile4'])) {?><a  rel="external" target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile4']; ?>">Download File4</a><?php } else { echo"N/a";}?></td>
					<td> <?php if(!empty($records['myfile5'])) {?><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile5']; ?>">View</a><?php } else { echo"N/a";}?></td>
					<td> <?php if(!empty($records['myfile5'])) {?><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile5']; ?>">View</a><?php } else { echo"N/a";}?></td>
                  </tr>
				  <tr>
                     
                     <td><b>Driver's license or other I.D</b></td>
                     <td><b>Voided business check check</b></td>
                  </tr>
				  
				   <tr>
                     <td> <?php if(!empty($records['myfile7'])) {?><a  rel="external" target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile7']; ?>">View</a><?php } else { echo"N/a";}?></td>
					<td> <?php if(!empty($records['myfile8'])) {?><a  target="_blank" href="<?php echo base_url()."assets/upload/signature/".$records['myfile8']; ?>">View</a><?php } else { echo"N/a";}?></td>
					
                  </tr>
				  
				  <tr>
                     <td><b>Additional For To Upload</b></td>
                     <td><b>upload</b></td>
                  </tr>
				  <tr>
                     <td><?php 
										if(isset($records['additional_for_to_upload_r'])) { 	
										if($records['additional_for_to_upload_r']==1){ echo"Yes";} 
										if($records['additional_for_to_upload_r']==0){ echo"No";} 
										}?></td>
                    
                  </tr>
               </table>
            </div>
         </div>
      </div>
   </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>