/// @description get max text for button width, create buttons
index = 0;

menuItem[0] = "Play";
menuItem[1] = "Options";
menuItem[2] = "Quit";

menuSpacing = 100;

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
	instance_create_depth(room_width / 2, 200 + i * menuSpacing, 0, objButton);
}