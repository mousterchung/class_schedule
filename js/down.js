var query_str = window.location.search; 
var url_param = new URLSearchParams(query_str); 
var window_ = url_param.get('window'); 
var another_window = window_=='left'?'right':(window_=='right'?'left':null); 

function open_file(data_site, data_semester) {
	parent.frame_top.open_file_from_down(data_site, data_semester); 
}