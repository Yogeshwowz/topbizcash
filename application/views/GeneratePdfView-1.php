
<div class="container">
   <!-- MultiStep Form -->
   <div class="container-fluid" id="grad1">
      <div class="row  mt-0 "  style="">
         <div id="msform1" class="PDF" >
            <div class="row">
               
               
               <table style="width:100%;border:1px solid #000;text-align:left;padding:0;border-collapse: collapse; font-family: Arial, Helvetica, sans-serif;font-size:10px;">
                <tr>
                     <th colspan="4">
              		 <h4 style="color:#801d19;background:#d9d9d8;margin:0;text-align:left;font-size:18px;">A. BUSINESS INFORMATION</h4>
                     </th>
                  </tr>
                  <tr>
                     <td colspan="2" style="text-align:left;color:#000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Legal/corporate name: </b><?php if(!empty($records['business_name'])) { echo $records['business_name'];
								}?></td>
                     <td colspan="2" style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">DBA: </b><?php if(!empty($records['business_dba'])) { echo $records['business_dba']; }?></td>
                    
                  </tr>
                
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Physical address:</b> <?php if(!empty($records['business_physical_address'])) { echo $records['business_physical_address']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">City:</b> <?php if(!empty($records['business_city'])) { echo $records['business_city']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">State:</b> <?php if(!empty($records['business_state'])) { echo $records['business_state']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Zip:</b> <?php if(!empty($records['business_zip'])) { echo $records['business_zip']; }?></td>
                     
                  </tr>
                 
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Business phone:</b> <?php if(!empty($records['business_phone'])) { echo $records['business_phone']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Fax:</b> <?php if(!empty($records['business_fax'])) { echo $records['business_fax']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" ><b style="color:#aba945;">Federal tax ID:</b> <?php if(!empty($records['business_federal_tax_id'])) { echo $records['business_federal_tax_id']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;"></td>
                  </tr>
                
                  <tr style="border: 1px solid #000;">
                     
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Contact:</b> <?php if(!empty($records['business_contact_no'])) { echo $records['business_contact_no']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">E-mail:</b> <?php if(!empty($records['business_email'])) { echo $records['business_email']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Website:</b> <?php if(!empty($records['business_website'])) { echo $records['business_website']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;"></td>
                  </tr>
                  
                
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Date business started:</b> <?php if(!empty($records['business_date'])) { echo $records['business_date']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Length of ownership:</b> Y-<?php if(!empty($records['business_length_of_ownership_year'])) { echo $records['business_length_of_ownership_year']; }?> M-<?php if(!empty($records['business_year_at_location_month_year'])) { echo $records['business_year_at_location_month_year']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Years at location:</b> <?php if(!empty($records['business_year_at_location_month_year'])) { echo $records['business_year_at_location_month_year']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">NO. of locations:</b> <?php if(!empty($records['business_locations'])) { echo $records['business_locations']; }?></td>
                  </tr>
                 
                   <tr>
                     <th colspan="4">
              		 <h4 style="color:#801d19;background:#d9d9d8;margin:0;text-align:left;font-size:18px;">B. OWNERSHIP <small style="text-align:left;color:#aba945;font-size:12px;">*(must have at least 67% ownership, if NOT, add additional owners on additional applications)</small></h4>
                     </th>
                  </tr>
                  <tr>
                     <td colspan="1" style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Name:</b> <?php if(!empty($records['ownership_name'])) { echo $records['ownership_name']; }?></td>
                     <td colspan="3" style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Contact phone number:</b> <?php if(!empty($records['ownership_contact_phone_number'])) { echo $records['ownership_contact_phone_number']; }?></td>
                  </tr>
                  
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Home address:</b> <?php if(!empty($records['ownership_a000ress'])) { echo $records['ownership_a000ress']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" ><b style="color:#aba945;">City:</b> <?php if(!empty($records['ownership_city'])) { echo $records['ownership_city']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">State:</b> <?php if(!empty($records['ownership_state'])) { echo $records['ownership_state']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Zip:</b> <?php if(!empty($records['ownership_zip'])) { echo $records['ownership_zip']; }?></td>
                  </tr>
                
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Date of birth:</b> <?php if(!empty($records['ownership_dob'])) { echo $records['ownership_dob']; }?></td>
                     <td colspan="3" style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">SSN:</b> <?php if(!empty($records['ownership_ssn'])) { echo $records['ownership_ssn']; }?></td>
                  </tr>
                
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">% Ownership of company:</b> <?php if(!empty($records['ownership_of_company'])) { echo $records['ownership_of_company']; }?></td>
                     <td colspan="2" style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">* Must have at least 67% ownership:</b></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Title:</b> <?php if(!empty($records['ownership_title'])) { echo $records['ownership_title'];
								}?></td>
                  </tr>
              
                  <tr>
                     <th colspan="4">
                        <h4 style="color:#801d19;background:#d9d9d8;margin:0;text-align:left;font-size:18px;">C. LEASE <small style="color:#aba945;">(Landlord Information)</small></h4>
                     </th>
                  </tr>
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Landlord Name:</b> <?php if(!empty($records['landlord_name'])) { echo $records['landlord_name']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Contact:</b> <?php if(!empty($records['landlord_contact'])) { echo $records['landlord_contact']; }?>	</td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Monthly rent:</b> <?php if(!empty($records['landlord_m_rent'])) { echo $records['landlord_m_rent']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;"><b style="color:#aba945;">Phone:</b> <?php if(!empty($records['landlord_phone_no'])) { echo $records['landlord_phone_no']; }?></td>
                  </tr>
               
             
                  <tr>
                     <th colspan="4">
                        <h4 style="color:#801d19;background:#d9d9d8;margin:0;text-align:left;font-size:18px;">D. BUSINESS PROFILE</h4>
                     </th>
                  </tr>
                  <tr>
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
				  
				  
				  
				  
				  
                     <td style="text-align:left;color:#aba945;border: 1px solid #000;padding-bottom:5px;vertical-align:top;"><b style="color:#aba945;vertical-align:top;">Ownership:</b>
                     <ul style="list-style:none;padding:0px;">
					 <?php foreach($ownership as $ownership){?>
                     	<li>
						<label><input style="color:#000; " type="checkbox" name="business_profile_ownership[]" value="<?php echo $ownership->name;?>"  class='ownershipcheckboxes'   <?php if(!empty($ownership_arr)) { if (in_array($ownership->name, $ownership_arr)){ echo"checked";}}?>/><?php echo $ownership->name;?> </label>
						</li>
					 <?php } ?>              		
                     </ul>                     
                     </td>
                     <td style="text-align:left;color:#aba945;border: 1px solid #000;padding-bottom:5px;vertical-align:top;" colspan="2"><b style=" display:block;width:100%;color:#aba945;">Merchant type:</b>
					<ul style="list-style:none;padding:0; display:inline-block;width:50%;vertical-align:top;" >
                     	<li style="margin-top: -5px;"><label ><input style="margin-top: 5px;color:#000; " type="checkbox" value="Retail" <?php if (in_array('Retail', $merchantarry)){echo "checked";}?>> Retail</label></li>
						<li style="margin-top: -5px;"><label><input style="margin-top: 5px;color:#000; " type="checkbox" value="Restaurant" <?php if (in_array('Restaurant', $merchantarry)){echo "checked";}?>>Restaurant</label></li>
						<li style="margin-top: -5px;"><label><input style="margin-top: 5px;color:#000; " type="checkbox" value="Lodging" <?php if (in_array('Lodging', $merchantarry)){echo "checked";}?>> Lodging</label></li>
						
                     </ul>
                      <ul  style="list-style:none;padding:0;display:inline-block;width:50%;vertical-align:top;margin-top:-1px;">
                     	<li style="margin-top: -5px;"><label><input style="margin-top: 5px;color:#000; " type="checkbox"  value="Internet"  <?php if (in_array('Internet', $merchantarry)){echo "checked";}?> /> Internet</label></li>
						<li style="margin-top: -5px;"><label><input style="margin-top: 5px;color:#000; " type="checkbox"  value="Home-based"  <?php if (in_array('Home-based', $merchantarry)){echo "checked";}?>> Home-based</label></li>
						<li style="margin-top: -5px;"><label><input style="margin-top: 5px;color:#000; " type="checkbox" value="Home-based"  <?php if (in_array('Automotive', $merchantarry)){echo "checked";}?>> Automotive</label></li>
						<li style="margin-top: -5px;"><label><input style="margin-top: 5px;color:#000; " type="checkbox" value="Others" <?php if (in_array('Others', $merchantarry)){echo "checked";}?>> Others</label></li>
						<li style="margin-top: -5px;"><label> <?php if(!empty($records['business_profile_ownership_text'])) { echo $records['business_profile_ownership_text']; }?></label></li>
                     </ul></td>
                     <td style="text-align:left;color:#aba945;border: 1px solid #000;padding-bottom:5px;vertical-align:top;"><b style="color:#aba945;">Cards accepted:</b>
                      <ul style="list-style:none;padding:0;">
                     	<?php foreach($card as $card){?>
										<li><label><input style="margin-top: 5px;color:#000; " type="checkbox" name="business_card_profile[]" value="<?php echo $card->name;?>"  class='cardcheckboxes'   <?php if(!empty($cardarry)) { if (in_array($card->name, $cardarry)){ echo"checked";}}?>/><?php echo $card->name;?> </label></li>
									<?php } ?>
                     </ul></td>
                  </tr>
             
                  <tr>
                     <th colspan="4">
                        <h4 style="color:#801d19;background:#d9d9d8;margin:0;text-align:left;font-size:18px;">E. CASH ADVANCE</h4>
                     </th>
                  </tr>
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" colspan="2"><b style="color:#aba945;">Amount requested: (We provide up to 2 times a companies gross monthly bank revenue).</b>   <br><?php if(!empty($records['cash_advance_amount'])) { echo $records['cash_advance_amount']; }?></td>
                
                     <td  style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" colspan="2"><b style="color:#801d19;">Have you used a cash advance plan before?</b> <br><?php if(isset($records['cash_advance_plan_before_r'])) { if($records['cash_advance_plan_before_r']==1){ echo"Yes";} } ?>
					 <?php if(isset($records['cash_advance_plan_before_r'])) { if($records['cash_advance_plan_before_r']==0){ echo"No";} } ?>
					 
					 </td>
                   
                  </tr>
                
                  <tr>
                    <td  style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" colspan="2"><b style="color:#aba945;">Average Visa/MasterCard monthly sales:</b><br> <?php if(!empty($records['cash_advance_master_m_sales'])) { echo $records['cash_advance_master_m_sales']; }?></td>
                     <td  style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" colspan="2"><b style="color:#801d19;">If so, what company did you use?</b><br> <?php if(!empty($records['cash_advance_company_use'])) { echo $records['cash_advance_company_use']; }?></td>
                  </tr>
                
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" colspan="2"><b style="color:#aba945;">Average gross monthly sales:</b><br> <?php if(!empty($records['cash_advance_average_g_m_sales'])) { echo $records['cash_advance_average_g_m_sales']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:20px;" ><b style="color:#801d19;">Original Balance:</b><br> <?php if(!empty($records['cash_advance_o_balance'])) { echo $records['cash_advance_o_balance']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:20px;" ><b style="color:#801d19;">Current Balance? (Provide Original Contract):</b> <br><?php if(!empty($records['cash_advance_c_balance'])) { echo $records['cash_advance_c_balance']; }?></td>
                  </tr>
                 
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" colspan="2"><b style="color:#aba945;">Average ticket size:</b> <br><?php if(!empty($records['cash_advance_average_t_size'])) { echo $records['cash_advance_average_t_size']; }?></td>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" colspan="2"><b style="color:#801d19;">Current payment or daily holdback%</b> <br><?php if(!empty($records['cash_advance_c_payment'])) { echo $records['cash_advance_c_payment']; }?></td>
                  </tr>
                 
                
                  <tr>
                     <th colspan="4">
                        <h4 style="color:#801d19;background:#d9d9d8;margin:0;text-align:left;font-size:18px;">F. OTHER INFORMATION</h4>
                     </th>
                  </tr>
                  <tr>
                     <td style="text-align:left;color:#000000;border: 1px solid #000;padding-bottom:5px;" colspan="4"><b style="color:#aba945;">Current processing company:</b> <?php if(!empty($records['description1'])) { echo $records['description1']; }?></td>
                  </tr>
                  <tr>
                     <td colspan="4"  style="text-align:left;color:#000000;border: 1px solid #000;height:20px;"></td>
                  </tr>
                
                  <tr>
                     <th colspan="4">
                        <h4 style="color:#801d19;background:#d9d9d8;margin:0;text-align:left;font-size:18px;">G. SIGNATURE </h4>
						
                     </th>
                  </tr>
                  <tr>
                     <td colspan="4"><b>By signing below, the Merchant and its owners/principals: (1) certify that all information on and documents submitted in connection with this Application are true, correct, and complete; and (2) authorize M&amp;P, its agents, partners, and lenders to receive credit reports and any other information regarding the Merchant and its owners/principals from third parties, in order to verify any information provided on the Application.</b></td>
                  </tr>
                  <tr>
                     <td colspan="2" style="padding:10px;"><b>Signature: </b>
					
					 <?php if(!empty($records['signature'])){?>
					 <img width="100" height="100" src="<?php echo base_url()."assets/upload/signature/".$records['signature']; ?>">
					 <?php }?></td>
                     <td colspan="2" style="padding:10px;"><b>Date :</b> <?php if(!empty($records['signature_date'])) { echo $records['signature_date']; }?></td>
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
