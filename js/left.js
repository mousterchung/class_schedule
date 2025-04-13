var query_str = window.location.search; 
var url_param = new URLSearchParams(query_str); 
var window_ = url_param.get('window'); 
var another_window = window_ == 'left'?'right':'left'; 

if (window_ != 'left') {
	throw new Error('\nThis iFrame is not the Left iFrame. \nSo left.js Will Stop.'); 
}

function open_file_from_here(data_site, data_semester) {
	parent.frame_top.contentWindow.open_file_from_down(data_site, another_window, data_semester); 
}