<main role="main">
   <section id="login_page" class="bg_img">
   <div class="bg_b2">
      <div class="container mt-5 mb-5">
         <div class="row justify-content-center">
            <div class="col-md-8 mt-5 mb-5">
               <div class="card">
                 
                  <div class="card-header">
                     <h1 class="text-center text-white mt-3">Forgot Password</h1>
                  </div>
                  <div class="card-body">
				   <div class="alert alert-danger" id="error-email" style="display:none;">
                     Invaild Email id .please try vaild Email id
                  </div>
				   <div class="alert alert-success" id="success-email" style="display:none;">
                     Your password has been updated successfully.updated password has been send on your email.
                  </div>
                     <form method="POST" method="post" role="form" novalidate="" id="forgotForm">
                        <div class="form-group row">
                           <label for="email"
                              class="col-md-4 col-form-label text-md-right">E-Mail</label>
                           <div class="col-md-6">
                              <input id="email" type="email" class="form-control "
                                 name="email" value=""  autocomplete="email" autofocus required='true'>
                           </div>
                        </div>
                      
                        <div class="form-group row mb-0 text-center">
                           <div class="col-md-12">
                              <input  type="submit" class="btn btn-success" value="Login" id="login" name="login">
                           </div>
                        </div>
                        <div class="form-group row mb-0 mt-3 text-center">
                        
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   </div>
</main>