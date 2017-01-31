// Graphics_text_add(x,y,text,c1,c2,c3,c4,alpha);

// Parameters
var _x = argument[0];
var _y = argument[1];
var _text = argument[2];
var _c1 = argument[3];
var _c2 = argument[4];
var _c3 = argument[5];
var _c4 = argument[6];
var _alpha = argument[7];
var _pos;
/*
if(!ds_exists(Graphics.text_list, ds_type_grid)) {
	Graphics_text_grid_create();
}

if((ds_grid_height(Graphics.text_list) == 1) && (ds_grid_get(Graphics.text_list, 0, 0) == noone)) {
	_pos = 0;
}
else {
	ds_grid_resize(Graphics.text_list, Graphics.text_parameters, ds_grid_height(Graphics.text_list)+1);
	_pos = (ds_grid_height(Graphics.text_list) - 1);
}

// X
ds_grid_set(Graphics.text_list, 0, _pos, _x);
// Y
ds_grid_set(Graphics.text_list, 1, _pos, _y);
// Text
ds_grid_set(Graphics.text_list, 2, _pos, _text);
// C1
ds_grid_set(Graphics.text_list, 3, _pos, _c1);
// C2
ds_grid_set(Graphics.text_list, 4, _pos, _c2);
// C3
ds_grid_set(Graphics.text_list, 5, _pos, _c3);
// C4
ds_grid_set(Graphics.text_list, 6, _pos, _c4);
// Alpha
ds_grid_set(Graphics.text_list, 7, _pos, _alpha);
*/

with(Graphics) {
	if(!ds_exists(text_list, ds_type_grid)) {
		text_list = Graphics_text_grid_create();
	}
	
	
	if((ds_grid_height(text_list) == 1) && (ds_grid_get(text_list, 2, 0) == noone)) {
		_pos = 0;
		//show_message("size:"+string(ds_grid_height(text_list)));
	}
	
	
	else {
		ds_grid_resize(text_list, text_parameters, ds_grid_height(text_list)+1);
		_pos = (ds_grid_height(text_list) - 2);
		//_pos = ds_grid_height(text_list);
	}
	//show_message("("+string(_pos)+","+string(ds_grid_height(text_list))+")");
	
	//show_message("size:"+string(ds_grid_height(text_list)));
	

	// X
	ds_grid_set(text_list, 0, _pos, _x);
	// Y
	ds_grid_set(text_list, 1, _pos, _y);
	// Text
	ds_grid_set(text_list, 2, _pos, _text);
	// C1
	ds_grid_set(text_list, 3, _pos, _c1);
	// C2
	ds_grid_set(text_list, 4, _pos, _c2);
	// C3
	ds_grid_set(text_list, 5, _pos, _c3);
	// C4
	ds_grid_set(text_list, 6, _pos, _c4);
	// Alpha
	ds_grid_set(text_list, 7, _pos, _alpha);
	
	//show_message(draw_dsgrid(text_list));
	
	return _pos;
}