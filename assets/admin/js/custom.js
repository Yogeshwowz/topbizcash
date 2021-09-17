$(document).ready(function() {
	var baseUrl = $('#baseUrl').val();
	$('body').on('click', '.delete-user', function() {
	var relVal = $(this).attr('rel');
	swal({
							 title: "Are you sure you want to delete this member",
							  text: "",
							  icon: "warning",
							  buttons: [
								'No, cancel it!',
								'Yes, I am sure!'
							  ],
							  dangerMode: true,
						}).then(function(isConfirm) {
						  if (isConfirm) {
							swal({
							  title: 'Member Deleted!',
							  text: 'This member has been deleted successfully!',
							  icon: 'success'
							}).then(function() {
							   
										$.ajax({
										type: "POST",
										url: baseUrl+'administrator/deleteMember',
										data: {
											mid:relVal
										},
										success: function(msgData) {
											
										 window.location.href = baseUrl+'administrator/users';
										}
										});

							});
						  } else {
							swal("Cancelled", "", "error");
						  }
						});
});


$( "#my_faq" ).submit(function( event ){ //on form submit       
        var proceed = true;
        $("#my_faq input[required=true],file[required=true]").each(function(){
                $(this).css('border-color',''); 
                if(!$.trim($(this).val())){ //if this field is empty 
                    $(this).css('border-color','red'); //change border color to red   
					proceed = false; //set do not proceed flag
				}
				
               
        });
        if(proceed){
			var desc = CKEDITOR.instances.description.getData();
			H5_loading.show();
			$( "#my_faq" ).submit();
			
				
        }
        event.preventDefault(); 
    });


   	$('body').on('click', '.delete-faq', function() {
	var relVal = $(this).attr('rel');
	swal({
							 title: "Are you sure you want to delete this faq",
							  text: "",
							  icon: "warning",
							  buttons: [
								'No, cancel it!',
								'Yes, I am sure!'
							  ],
							  dangerMode: true,
						}).then(function(isConfirm) {
						  if (isConfirm) {
							swal({
							  title: 'Faq Deleted!',
							  text: 'This Faq has been deleted successfully!',
							  icon: 'success'
							}).then(function() {
							   
										$.ajax({
										type: "POST",
										url: baseUrl+'administrator/deleteFaq',
										data: {
											mid:relVal
										},
										success: function(msgData) {
											
										 window.location.href = baseUrl+'administrator/faq';
										}
										});

							});
						  } else {
							swal("Cancelled", "", "error");
						  }
						});
});

});