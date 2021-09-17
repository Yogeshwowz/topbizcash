<div class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header d-flex justify-content-between">
          <h4 class="card-title"> Create FAQ </h4>
          
        </div>
        <div class="card-body">
          <!-- Page content -->
          <div class="container-fluid">
            <!-- Table -->
            <div class="row">
              
                <div class="card">
                  <div class="card-body">
                    <!-- Card header -->
                    <div class="row">
                      <form class="formcls" action="<?php echo base_url();?>administrator/create-faq" method="post" role="form" novalidate=""   id="my_faq" >
                        <?php $success = $this->session->flashdata('success');
                           if($success){ ?>
                        <div class="alert alert-success alert-dismissable model-css">
                           <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                           <?php echo $success; ?>                    
                        </div>
                        <?php 
                           } ?>
                        <div class="col-md-12">
                            <label class="form-control-label" for="editor1">Title</label>
                            
                            <input type="text" class="form-control" name="title" id="title" placeholder="Enter Title" required="true">
                          </div>
                       
                        
                          <div class="col-md-12">
                            <label class="form-control-label" for="editor1">Description</label>
                            <textarea class="form-control" name="description" id="description" placeholder="Enter description" required="true"></textarea>
                          </div>
                       
                        
                         <input  class="btn btn-primary mt-3" type="submit" name="create-submit" Value="Submit">
                    </form>
                      </div>
                     
                    
                    
                 
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>
