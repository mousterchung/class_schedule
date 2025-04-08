var url_param = new URLSearchParams(query_str); 
var window_ = url_param.get('window'); 
var another_window = window_ == 'left'?'right':'left'; 

if (window_ != 'right') {
	throw new Error('\nThis iFrame is not the Right iFrame. \nSo right.js Will Stop.'); 
}