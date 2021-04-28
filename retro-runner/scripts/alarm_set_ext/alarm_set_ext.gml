function alarm_set_ext(_count, _code) {
	alarm_struct = {
		check_alarms: function() {
			for(var int = 0; int < array_length(alarms); int++) {
				if(alarms[int] != -1) {
					if(alarm_get(int) == 0) {
						script_execute(alarms[int]);
						alarms[int] = -1;
					}
				}
			}
		},
		alarms: array_create(12, -1)
	}
	for(var int = 0; int < array_length(alarm); int++) {
		if(alarm[int] != -1) {
			alarm_set(int, _count);
			alarm_struct.alarms[int] = _code;
			break;
		}
	}
}
