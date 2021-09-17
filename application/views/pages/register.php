<main role="main">
   <div class="container mt-5 mb-5">
      <div class="row justify-content-center mt-5 mb-5">
         <div class="col-md-8 mt-5 mb-5">
            <div class="card">
               <div class="card-header">
                  <h1 class="text-center mt-3">Get Started Now</h1>
               </div>
               <div class="alert alert-danger" id="error-email" style="display:none;">
                  This Email is alreadly exist.Please Try other email.
               </div>
               <div class="card-body">
                  <form id="registerFormId"  action="<?php echo base_url();?>state" method="post" role="form" novalidate="">
                     <div class="form-group row">
                        <div class="col-md-6 mt-4">
                           <input id="first_name" placeholder="First Name" type="text"
                              class="form-control " name="first_name"
                              value="" required='true' autocomplete="first_name" autofocus >
                        </div>
                        <div class="col-md-6 mt-4">
                           <input id="last_name" placeholder="Last Name" type="text"
                              class="form-control " name="last_name"
                              value="" required='true' autocomplete="last_name" autofocus>
                        </div>
                     </div>
                     <div class="form-group row mt-4 mb-0">
                        <div class="col-md-12">
                           <input id="email" type="email" placeholder="Email"
                              class="form-control " name="email"
                              value="" required='true' autocomplete="email">
                        </div>
                     </div>
                     <div class="form-group row">
                        <div class="col-md-6 mt-4">
                           <input id="password" type="password" placeholder="Password"
                              class="form-control " name="password"
                              required='true' autocomplete="new-password">
                        </div>
                        <div class="col-md-6 mt-4">
                           <input id="password-confirm" placeholder="Confirm Password" type="password"
                              class="form-control" name="password_confirmation" required='true'
                              autocomplete="new-password">
							  <div class="fv-plugins-message-container" style="display:none;" id="error-new-password" data-field="password_confirmation" data-validator="identical" class="fv-help-block">The password and its confirm are not the same</div>
                        </div>
                     </div>
                     <div class="form-group row">
                        <div class="col-md-6 text-center mt-4">
                           <label>Expedite</label>
                           <select id="expedite" class="form-control "
                              name="expedite" value="" required='true' autofocus>
                              <option value="1" selected>Yes</option>
                              <option value="0">No</option>
                           </select>
                        </div>
                        <div class="col-md-6 text-center mt-4">
                           <label>State</label>
                           <select id="state" class="form-control"
                              name="state" value="" required='true' autofocus>
                              <option value="">What state are you in?</option>
                              <?php foreach($state as $state){?>
                              <option value="<?php echo $state->id;?>"><?php echo $state->name;?></option>
                              <?php }?>
                           </select>
                        </div>
                     </div>
                     <div class="form-group row mt-5 mb-5">
                        <div class=" col-md-5 text-center">
                           <input id="agreeTerms" type="checkbox" value='1'
                              class=" " name="agreeTerms"
                              value="" required autocomplete="agreeTerms" autofocus>
                           <span for="agreeTerms" class="">I agree to the <a href="#">Terms of
                           Service</a></span>
						    <div style="display:none;" id="error-checkbox" class="fv-plugins-message-container"><div data-field="agreeTerms" data-validator="notEmpty" class="fv-help-block">You must agree to terms of service</div></div>
                        </div>
                        <div class="col-md-2">
                           <input id="subscribed" type="hidden" value='0' name="subscribed">
                        </div>
                        <div class="col-md-5 text-center">
                           <input id="subscribed" type="checkbox" value='1'
                              class=" " name="subscribed"
                              value="" autocomplete="subscribed" autofocus>
                           <span for="subscribed"
                              class="col-form-label">I would like to recieve business advice and emails from Tax Resale Certificate</span>
							  
                        </div>
                     </div>
                     <div class="form-group row mb-0 text-center">
                        <div class="col-md-12 text-center">
                          
						   <input name="submitbtn" type="submit"
                              class="btn btn-primary" value="Get Started">
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</main>