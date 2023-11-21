if (!isServer) exitWith {};

params ["_dayTimeSpeed","_nightTimeSpeed"];

while {true} do {

sleep 60;

	if ((daytime < 4) OR (daytime > 21)) then {
		setTimeMultiplier _nightTimeSpeed;
	}
	else {
		setTimeMultiplier _dayTimeSpeed;
	};

};