 <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header d-flex justify-content-between">
                <h4 class="card-title"> FAQ List</h4>
                
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table id="example" class="table table-striped ">
                    <thead class="">
                     <th>Title</th>
                <th>Description</th>
                    </thead>
                    <tbody>
            <?php
              if(!empty($faq)){
                
                $blue  ="background-color: #000080; color:#fff;";
                $orange    ="background-color: #FF6347; color:#fff;";
                $green  ="background-color: #006400;color:#fff; ";
                foreach($faq as $record){ 
                ?>
                  <tr>
                    
                    
                    <td><?php echo $record->title; ?></td>
                    <td><?php echo $record->description; ?></td>
                   
                    <td class="text-right">
                    <a  target="_blank" href="<?php echo base_url();?>administrator/edit-faq/<?php echo base64_encode($record->id);?>" class="" title="View"><i class="fas fa-eye pr-1"></i></a> | <a class=" text-danger delete-faq" href="javascript:;" title="Delete" rel="<?php echo $record->id;?>"><i class="fas fa-trash"></i></a>
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