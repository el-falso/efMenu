/// @description Insert description here
// You can write your code in this editor

enum STATE {
	idle,
	hover,
	clicked
}

draw_set_font(fntMenu);

// Button Properties
btnIndex = objMenu.index;
btnState = STATE.idle;
btnName = objMenu.menuItem[btnIndex];
btnPaddingHor = 40;
btnPaddingVer = 10;
btnWidth = 2 * btnPaddingHor + string_width(objMenu.maxText);
btnHeigth = 2 * btnPaddingVer + string_height(objMenu.maxText);

// Collision
image_speed = 0;
image_yscale = btnHeigth / sprite_height;
image_xscale = btnWidth / sprite_width;