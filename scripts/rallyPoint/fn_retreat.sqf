//this addAction ["Withdraw back to the FHQ","retreat.sqf",[objectname]];

params [
	"_dest"
]; // Get the destination.
_dir = random 359; // Get a random direction

// Move the person a few meters away from the destination (in the direction of _dir)

disableUserInput true;

"retreat" cutText ["Retreating", "BLACK", 1, true];
sleep 2;
player SetPos (getPos _dest);
//player setVehiclePosition [(_dest modelToWorld[(0+1*sin(_dir)),(0+1*cos(_dir)),0]), [],1, "CAN_COLLIDE"];
[player, player] call ace_medical_treatment_fnc_fullHeal;
_rettime = 60;
while {_rettime>0} do {
	_rettime = _rettime - 1;
	titleText [str(_rettime), "PLAIN DOWN", 1];
	sleep 1;
};
titleFadeOut 1;
"retreat" cutFadeout 4;

disableUserInput false;