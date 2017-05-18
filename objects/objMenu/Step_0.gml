/// @description set button states
mouseClick = mouse_check_button(mb_left);

x = mouse_x;
y = mouse_y;

if (position_meeting(x, y, objButton)) {
	btnId = instance_nearest(x, y, objButton);
	if (mouseClick) {
		variable_instance_set(btnId, "btnState", objButton.STATE.clicked);
		switch (btnId.btnActionType) {
			case "room":
				room_goto(btnId.btnAction);
				break;
			case "script":
				script_execute(btnId.btnAction);
				break;
			default:
				break;
		}
	}
	else {
		variable_instance_set(btnId, "btnState", objButton.STATE.hover);
	}
}
else {
	for (i = 0; i < instance_number(objButton); i++) {
		btnId = instance_find(objButton,i);
		variable_instance_set(btnId, "btnState", objButton.STATE.idle);
   }
}