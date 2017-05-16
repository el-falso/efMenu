/// @description Insert description here
// You can write your code in this editor
index = 0;

menuItem[0] = "Start Game";
menuItem[1] = "Options";
menuItem[2] = "Quit";

maxLength = 0;
maxText = "";

for (i = 0; i < array_length_1d(menuItem); i++) {
	maxLength = max(string_length(menuItem[i]), maxLength);
	if (string_length(menuItem[i]) == maxLength) {
		maxText = menuItem[i];
	}
}


for (i = 0; i < array_length_1d(menuItem); i++) {
	index = i;
	instance_create_depth(room_width / 2, 200 + i * 200, 0, objButton);
}