/// @description get max text for button width, create buttons
index = 0;

menuItem[0,0] = "Play";		menuItem[1,0] =	"room";		menuItem[2,0] =	rmGame;
menuItem[0,1] = "Options";	menuItem[1,1] =	"room";		menuItem[2,1] =	rmOptions;
menuItem[0,2] = "Quit";		menuItem[1,2] = "script";	menuItem[2,2] =	scrGameEnd;

menuSpacing = 100;

maxLength = 0;
maxText = "";

for (i = 0; i < array_length_2d(menuItem, 0); i++) {
	maxLength = max(string_length(menuItem[0, i]), maxLength);
	if (string_length(menuItem[0, i]) == maxLength) {
		maxText = menuItem[0, i];
	}
}


for (i = 0; i < array_length_2d(menuItem, 0); i++) {
	index = i;
	instance_create_depth(room_width / 2, 200 + i * menuSpacing, 0, objButton);
	
}