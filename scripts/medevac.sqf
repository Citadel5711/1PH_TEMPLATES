// [this, 30] execVM "scripts\medevac.sqf";

if (!isServer) exitWith {};

params ["_medEvacPad","_medEvacDistance"];

while {isServer} do
{
	{
		_unit = _x;
		if (_medEvacPad distance getPos vehicle _unit < _medEvacDistance) then {
			[west, 1] call BIS_fnc_respawnTickets;
			deleteVehicle _unit;
		};
		
	}foreach (allUnits select {_x getVariable ["citadelTriageUnitPlayer", false]});
	
	{
		_unit = _x;
		if (_medEvacPad distance getPos vehicle _unit < _medEvacDistance) then {
			deleteVehicle _unit;
		};
		
	}foreach (allUnits select {_x getVariable ["citadelTriageUnit", false]});
	
	sleep 10;
		
	
};