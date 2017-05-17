/// @description Insert description here
// You can write your code in this editor


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntMenu);


switch (btnState) {
	case STATE.idle:
		draw_rectangle_colour(x - btnWidth / 2, y - btnHeigth / 2, x + btnWidth / 2, y + btnHeigth / 2,
			btnCol1, btnCol1, btnCol2, btnCol2, false);
			draw_set_color(btnTextCol);
		break;
	case STATE.hover:
		draw_rectangle_colour(x - btnWidth / 2, y - btnHeigth / 2, x + btnWidth / 2, y + btnHeigth / 2,
			btnCol1Hov, btnCol1Hov, btnCol2Hov, btnCol2Hov, false);
			draw_set_color(btnTextColHov);
		break;
	case STATE.clicked:
		break;
	default:
		break;
}

draw_text(x, y, btnName);
