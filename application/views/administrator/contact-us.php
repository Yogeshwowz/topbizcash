 <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header d-flex justify-content-between">
                <h4 class="card-title"> Contact Us List</h4>
                
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table id="example" class="table table-striped ">
                    <thead class="">
                     <th>Name</th>
                     <th>Email</th>
                     <th>Phone</th>
                     <th>Message</th>
                    </thead>
                    <tbody>
            <?php
              if(!empty($contactUs)){
                foreach($contactUs as $record){ 
                ?>
                  <tr>
                    <td><?php echo $record->contactName; ?></td>
                    <td><?php echo $record->contactEmail; ?></td>
                   <td><?php echo $record->contactPhone; ?></td>
                    <td><?php echo $record->contactMessage; ?></td>
                   
                  </tr><?php
                }
              } ?>
              
          </tbody>
                  </table>
                </div>
               
              </div>
            </div>
          </div>
        </div>
      </div>