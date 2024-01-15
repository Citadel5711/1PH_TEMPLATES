//[0.85,0.65,0.45,0.65] execVM "scripts\stealthAdjust.sqf";

if (!hasInterface) exitWith {};

params ["_standingCamo","_crouchingCamo","_proneCamo","_undefinedCamo"];

while {true} do {
	
	sleep 1;
	
	if (stance player == "STAND") then {
		
		player setUnitTrait ["camouflageCoef", _standingCamo];
		player setUnitTrait ["audibleCoef", _standingCamo];
		
	};
	
	if (stance player == "CROUCH") then {
		
		player setUnitTrait ["camouflageCoef", _crouchingCamo];
		player setUnitTrait ["audibleCoef", _crouchingCamo];
		
	};
	
	if (stance player == "PRONE") then {
		
		player setUnitTrait ["camouflageCoef", _proneCamo];
		player setUnitTrait ["audibleCoef", _proneCamo];
		
	};
	
	if (stance player == "UNDEFINED") then {
		
		player setUnitTrait ["camouflageCoef", _undefinedCamo];
		player setUnitTrait ["audibleCoef", _undefinedCamo];
		
	};
	
	//hint "Debug sneak adjust.";
};