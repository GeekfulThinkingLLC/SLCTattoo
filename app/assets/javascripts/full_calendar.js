var initialize_calendar;
initialize_calendar = function() {
	$('.calendar').each(function(){
		var calendar = $(this)
		calendar.fullCalendar({});
	})
};
$(document).ready();