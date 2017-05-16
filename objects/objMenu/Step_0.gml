/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

if (position_meeting(x, y, objButton)) {
	bntId = instance_nearest(x, y, objButton);
	variable_instance_set(bntId, "btnState", 1);
}
else {
	for (i = 0; i < instance_number(objButton); i++) {
		bntId = instance_find(objButton,i);
		variable_instance_set(bntId, "btnState", 0);
   }
}