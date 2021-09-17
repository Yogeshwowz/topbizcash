 <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header d-flex justify-content-between">
                <h4 class="card-title"> Users List</h4>
                
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table id="example" class="table table-striped ">
                    <thead class="">
                     <th>Date</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Password</th>
					<th>Status</th>
					<th>Action</th>
                    </thead>
                  	<tbody>
					  <?php
							if(!empty($userRecords)){
								
								$blue  ="background-color: #000080; color:#fff;";
								$orange    ="background-color: #FF6347; color:#fff;";
								$green  ="background-color: #006400;color:#fff; ";
								foreach($userRecords as $record){ 
								?>
									<tr>
										
										<td><?php echo date("d-m-Y", strtotime($record->created_date)) ?></td>
										<td><?php echo $record->first_name; ?></td>
										<td><?php echo $record->last_name; ?></td>
										<td><?php echo $record->email; ?></td>
										<td><?php if(!empty($record->plain_password)) {  echo $record->plain_password;  } ?></td>
										<td><?php if(empty($record->filename_1)) {?><span class="text-danger"><?php  echo "Pending"; ?></span> <?php } else { echo "Complete";  } ?>
										</td>
										<td class="text-right">
										<a  target="_blank" href="<?php echo base_url();?>administrator/user-details/<?php echo base64_encode($record->userId);?>" class="" title="View"><i class="fas fa-eye pr-1"></i></a> | <a class=" text-danger delete-user" href="javascript:;" title="Delete" rel="<?php echo $record->userId;?>"><i class="fas fa-trash"></i></a>
										</td>
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