/*

this addMPEventHandler ["MPKilled", { 
 params ["_unit", "_killer", "_instigator", "_useEffects"]; 
 
[_unit, _killer, _instigator, _useEffects] execVM "scripts\triageSystem.sqf";

}];

*/

if (!isServer) exitWith {};
 params ["_unit", "_killer", "_instigator", "_useEffects"]; 
 
 //hint str _unit;
 
_unitClass = typeOf _unit;
_unitPosition = getPos _unit;
_unitDir = getDir _unit;
_unitGroup = group _unit;
_unitVehicle = vehicle _unit;
_unitSide = side _unit;
_wasPlayer = isPlayer [_unit];

_newUnit = createGroup _unitSide createUnit [_unitClass, [0,0,0], [], 0, "CAN_COLLIDE"];
//_newUnit = _unitClass createUnit [[0,0,9999], _unitGroup,""];
[_newUnit, true,99999,false] call ace_medical_fnc_setUnconscious; 

sleep 4;

_newUnit setUnitLoadout getUnitLoadout _unit;

sleep 1;

moveOut _unit;
_unitPosition = getPosATL _unit;
_unit setPosATL (getPosATL _newUnit);

_newUnit setPosATL (_unitPosition);
_newUnit disableAI "ALL";
_newUnit allowDamage false;
_newUnit moveinAny _unitVehicle;
_newUnit setVariable ["citadelTriageUnit",true];
if (_wasPlayer) then {_newUnit setVariable ["citadelTriageUnitPlayer",true];};

deleteVehicle _unit;

_newUnit addMPEventHandler ["MPKilled", { 
 params ["_unit", "_killer", "_instigator", "_useEffects"]; 
 
[_unit, _killer, _instigator, _useEffects] execVM "scripts\triageSystem.sqf";

}];