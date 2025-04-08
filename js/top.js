var semester_select = document.getElementById('semester_select'); 
var type_class_select = document.getElementById('type_class_select'); 
var type_subject_select = document.getElementById('type_subject_select'); 
var type_teacher_select = document.getElementById('type_teacher_select'); 
var type_room_select = document.getElementById('type_room_select'); 
var window_mode_select = document.getElementById('window_mode_select'); 
var offsettop_sensor = document.getElementById('offsettop_sensor'); 

var semester; 
var window_mode = 'left'; 
var select_data_json; 

function height_checker() {
	offsettop = offsettop_sensor.offsetTop
	console.log('offsetTop = ', offsettop); 
	if (offsettop > 57) {
		console.log('Wrapped.'); 
		parent.frame_top.style.height = 'calc(70px + 1em)'; 
	}
}

async function load_select_data_json(semester_data) {
	await fetch(`./data/file_list/${semester_data}.json`)
		.then(response => {
			if (!response.ok) {
				throw new Error(`[ERROR] HTTP Error! Status: ${response.status}`); 
			}
			return response.json(); 
		})
		.then(data => {
			console.log(data); 
			select_data_json = data; 
		})
		.catch(error => console.error('Failed to Fetch Data: ', error)); 
}

function remove_redundant_option(type_select_str) {
	type_select = eval(type_select_str); 
	
	options = type_select.getElementsByTagName('option'); 
	for (var [k, option_] of Object.entries(options)) {
		if (!(option_.getAttribute('value') == 'aaa')) {
			option_.remove(); 
		}
	}
	
	console.log(`Removed Options from '${type_select_str}'.`); 
}

function add_option_(type_select_str) {
	type_select = eval(type_select_str); 
	type_word = type_select_str.split('_')[1]; 
	
	need_to_add = select_data_json.files[type_word]; 
	for (var [key, value] of Object.entries(need_to_add)) {
		var option_ = document.createElement('option'); 
		var text_in_option_to_show = document.createTextNode(value);
		option_.setAttribute('value', key); 
		option_.appendChild(text_in_option_to_show); 
		type_select.appendChild(option_); 
	}
	
	console.log(`Added Options to '${type_select_str}'.`); 
}

function add_option(type_select_str) {
	type_select = eval(type_select_str); 
	type_word = type_select_str.split('_')[1]; 
	
	o = select_data_json.files[type_word]; 
	for (var need_to_add of o) {
	for (var [key, value] of Object.entries(need_to_add)) {
		var option_ = document.createElement('option'); 
		var text_in_option_to_show = document.createTextNode(value);
		option_.setAttribute('value', key); 
		option_.appendChild(text_in_option_to_show); 
		type_select.appendChild(option_); 
	}}
	
	console.log(`Added Options to '${type_select_str}'.`); 
}

async function change_select_data(semester_data) {
	await load_select_data_json(semester_data); 
	if (select_data_json.semester == semester) {
		console.log(`Semester: '${semester}' Matched.`); 
	}
	
	await remove_redundant_option('type_class_select'); 
	await add_option('type_class_select'); 
	
	await remove_redundant_option('type_subject_select'); 
	await add_option('type_subject_select'); 
	
	await remove_redundant_option('type_teacher_select'); 
	await add_option('type_teacher_select'); 
	
	await remove_redundant_option('type_room_select'); 
	await add_option('type_room_select'); 
	
	console.log(`Changed Select Data to '${semester_data}'.`)
}

function open_file(data_site, data_window_mode) {
	parent.window_dict[data_window_mode].contentWindow.location.replace(`data/${semester}/${data_site}.xml`);
}

semester_select.addEventListener('change', (event) => {
	console.log(`'semester_select' Selected: '${event.target.value}'`); 
	height_checker(); 
	semester = event.target.value; 
	change_select_data(semester); 
})
type_class_select.addEventListener('change', (event) => {
	console.log(`'type_class_select' Selected: '${event.target.value}'`); 
	if (event.target.value == 'aaa') return; 
	open_file(event.target.value, window_mode); 
})
type_subject_select.addEventListener('change', (event) => {
	console.log(`'type_subject_select' Selected: '${event.target.value}'`); 
	if (event.target.value == 'aaa') return; 
	open_file(event.target.value, window_mode); 
})
type_teacher_select.addEventListener('change', (event) => {
	console.log(`'type_teacher_select' Selected: '${event.target.value}'`); 
	if (event.target.value == 'aaa') return; 
	open_file(event.target.value, window_mode); 
})
type_room_select.addEventListener('change', (event) => {
	console.log(`'type_room_select' Selected: '${event.target.value}'`); 
	if (event.target.value == 'aaa') return; 
	open_file(event.target.value, window_mode); 
})
window_mode_select.addEventListener('change', (event) => {
	console.log(`'window_mode_select' Selected: '${event.target.value}'`); 
	window_mode = event.target.value; 
})

height_checker(); 