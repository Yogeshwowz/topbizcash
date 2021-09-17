<?php $urlLink= explode('/',$_SERVER['REQUEST_URI']);  ?>
<footer class="footer">
        <div class=" container-fluid ">
          <div class="copyright">
            &copy; 2021 All Rights Reserved.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="<?php echo base_url();?>assets/admin/js/perfect-scrollbar.jquery.min.js"></script>
  <script src="<?php echo base_url();?>assets/admin/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
  
  <?php 
	if(in_array('users',$urlLink)) { ?>
			<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js" type="text/javascript"></script>
			<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap5.min.js" type="text/javascript"></script>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
			<link href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css" />
			<script>
				$(document).ready(function() {
				$('#example').DataTable( {
					"order": [],
					"pageLength": 10
				} );
			} );
			</script><?php 
	}
	?>
	 <script src="<?php echo base_url();?>assets/plugins/loading/loading.js"></script>
	<link href="<?php echo base_url();?>assets/plugins/loading/loading.css" rel="stylesheet" />
	 <script src="<?php echo base_url();?>assets/admin/js/custom.js"></script>
	 <script src="https://cdn.ckeditor.com/4.16.0/standard-all/ckeditor.js"></script>
	<script>CKEDITOR.replace('description');</script>
	 
	
</body>

</html>