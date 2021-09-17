<footer>
   <div class = "container">
   <div class = "row end">
      <div class = "col-3">
         <div class = "logo">
            <a href = "<?php echo base_url();?>">
            <img src="<?php echo base_url();?>assets/img/logo1.png" alt = "logo"/></a>
         </div>
      </div>
      <div class = "col-8">
         <div class = "footer-content">
            <h3>Disclaimer</h3>
            <p>Topbizcash is a private business and not owned, operated, licensed by, nor affiliated with any federal, state, county, city government, or any agency, department,</p>
            <a class = "footer-links" href = "#">Privacy Policy</a>&nbsp||
            <a class = "footer-links" href = "#">Terms and Condition</a>
         </div>
      </div>
   </div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<script src="<?php echo base_url();?>assets/js/custom.js"></script>
<!----------- Loading --------------->
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/plugins/loading/loading.css">
<script src="<?php echo base_url();?>assets/plugins/loading/loading.js"></script>
<script src="<?php echo base_url();?>assets/input-signature/signature.js"></script>
	
	 
	

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<?php /*<script>
  $( function() {
    $( ".datepicker" ).datepicker({ maxDate: new Date(),dateFormat: 'mm-dd-yy' });
  } );

  
  
 </script>
	-->
	
<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>-->



<!--<script src="<?php echo base_url();?>assets/digital-signature/js/jquery.signature.js"></script>
<script>
$(function() {
	var sig = $('#sig').signature({syncField: '#signature64', syncFormat: 'PNG'});
	$('#disable').click(function() {
		var disable = $(this).text() === 'Disable';
		$(this).text(disable ? 'Enable' : 'Disable');
		sig.signature(disable ? 'disable' : 'enable');
	});
	$('#clear').click(function() {
		sig.signature('clear');
		$('#signature64').val('');
		return false;
	});
	$('#json').click(function() {
		alert(sig.signature('toJSON'));
	});
	$('#svg').click(function() {
		alert(sig.signature('toSVG'));
	});
	
	
});
</script>-->
*/?>




<script src="<?php echo base_url();?>assets/js/jquery.masknumber.js"></script>
 <script type="text/javascript">
        $(document).ready(function () {

            $('[name=landlord_m_rent]').maskNumber();
            $('[name=cash_advance_amount]').maskNumber();
            $('[name=cash_advance_master_m_sales]').maskNumber();
            $('[name=cash_advance_average_g_m_sales]').maskNumber();
            $('[name=cash_advance_average_t_size]').maskNumber();
			$('[name=cash_advance_o_balance]').maskNumber();
			 $('[name=cash_advance_c_balance]').maskNumber();
            $('[name=currency-data-attributes]').maskNumber();
			 
            $('[name=currency-configuration]').maskNumber({decimal: '_', thousands: '*'});
            $('[name=integer-default]').maskNumber({integer: true});
            $('[name=integer-data-attribute]').maskNumber({integer: true});
            $('[name=integer-configuration]').maskNumber({integer: true, thousands: '_'});
        });
    </script>
	
	
</body>

</html>