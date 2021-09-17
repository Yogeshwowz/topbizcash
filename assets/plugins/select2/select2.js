$(document).ready(function() {
   'use strict';

   $('.select2').select2({
	 minimumResultsForSearch: Infinity
   });

   

   // Select2 by showing the search
   $('.select2-show-search').select2({
    dir: "ltr",
	 minimumResultsForSearch: '',
	 placeholder: "Search"
   });

   $('#job').select2({
	 minimumResultsForSearch: '',
	 placeholder: "Search jobs here "

   });
   $('#employe').select2({
	 minimumResultsForSearch: '',
	 placeholder: "Search profiles here "
   });

   function formatState (state) {
	  if (!state.id) { return state.text; }
	  var $state = $(
		'<span><img src="../assets/images/flags/' +  state.element.value.toLowerCase() +
	'.svg" class="img-flag" /> ' +
	state.text +  '</span>'
	 );
	 return $state;
	};

	$(".select2-flag-search").select2({
	  templateResult: formatState,
	  templateSelection: formatState,
	   escapeMarkup: function(m) { return m; }
	});
	
	$("select2").select2({
        width: '100%'
    });
	$(".ad-post-status").select2({
        width: '100%',
		theme: "classic"
    });
	
	$('.select2-show-search-property').select2({
	 dir: "ltr",
	 placeholder: "Select Owner Entity Type",
	  multiple: true,
	  allowClear: true
		
   });
   
    $(".search-category").select2({
	  placeholder: "Select category",
	  allowClear: true,
	  width: '100%'
	});
	$(".search-program-levels").select2({
	  placeholder: "Select Program Level",
	  allowClear: true,
	  width: '100%'
	});
	$(".search-prize-level").select2({
	  placeholder: "Select Prize Level",
	  allowClear: true,
	  width: '100%'
	});
	 $(".search-location").select2({
	  placeholder: "Select Location",
	  allowClear: true,
	  width: '100%'
	});
	 $(".search-theme-year").select2({
	  placeholder: "Select Theme Year",
	  allowClear: true,
	  width: '100%'
	});
	 $(".search-truck").select2({
	  placeholder: "Select Truck/Trailer",
	  allowClear: true,
	  width: '100%'
	});
	 $(".event-type").select2({
	  placeholder: "Select Event Type",
	  allowClear: true,
	  width: '100%'
	});
	 $(".tickets-type").select2({
	  placeholder: "Select Ticket Type",
	  allowClear: true,
	  width: '100%'
	});
	 $(".shirts_size").select2({
	  placeholder: "Select Shirts Size",
	  allowClear: true,
	  width: '100%'
	});
	$(".search-category-item").select2({
	  placeholder: "Select Item",
	  allowClear: true,
	  width: '100%'
	});
 });
