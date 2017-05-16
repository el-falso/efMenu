/// @description Insert description here
// You can write your code in this editor


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntMenu);


switch (btnState) {
	case STATE.idle:
		draw_rectangle_colour(x - btnPadding - string_width(objMenu.maxText) / 2,
			y - btnPadding - string_height(objMenu.maxText) / 2,
			x + btnPadding + string_width(objMenu.maxText) / 2,
			y + btnPadding + string_height(objMenu.maxText) / 2,
			c_black,
			c_black,
			c_gray,
			c_gray,
			false);
		break;
	case STATE.hover:
	
		draw_rectangle_colour(x - btnPadding - string_width(objMenu.maxText) / 2,
			y - btnPadding - string_height(objMenu.maxText) / 2,
			x + btnPadding + string_width(objMenu.maxText) / 2,
			y + btnPadding + string_height(objMenu.maxText) / 2,
			c_lime,
			c_black,
			c_gray,
			c_gray,
			false);		
		break;
	case STATE.clicked:
		break;
	default:
		break;
}

draw_text(x, y, btnName);
