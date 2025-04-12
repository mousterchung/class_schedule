var query_str = window.location.search; 
var url_param = new URLSearchParams(query_str); 
var window_ = url_param.get('window'); 
var another_window = window_=='left'?'right':(window_=='right'?'left':null); 