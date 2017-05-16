/// @description Insert description here
// You can write your code in this editor

enum STATE {
	idle,
	hover,
	clicked
}

// Button Properties
btnIndex = objMenu.index;
btnState = STATE.idle;
btnName = objMenu.menuItem[btnIndex];
btnPadding = 10;

// Collision
draw_set_font(fntMenu);
image_speed = 0;
image_yscale = (2 * btnPadding + string_height(objMenu.maxText)) / sprite_height;
image_xscale = (2 * btnPadding + string_width(objMenu.maxText)) / sprite_width;