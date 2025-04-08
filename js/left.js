var url_param = new URLSearchParams(query_str); 
var window_ = url_param.get('window'); 
var another_window = window_ == 'left'?'right':'left'; 

if (window_ != 'left') {
	throw new Error('\nThis iFrame is not the Left iFrame. \nSo left.js Will Stop.'); 
}