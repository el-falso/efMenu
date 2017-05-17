/// @description set button states

x = mouse_x;
y = mouse_y;

if (position_meeting(x, y, objButton)) {
	bntId = instance_nearest(x, y, objButton);
	variable_instance_set(bntId, "btnState", objButton.STATE.hover);
}
else {
	for (i = 0; i < instance_number(objButton); i++) {
		bntId = instance_find(objButton,i);
		variable_instance_set(bntId, "btnState", objButton.STATE.idle);
   }
}