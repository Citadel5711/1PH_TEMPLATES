params ["_unit"];

// ===== ENHANCED AI =====

if (!isNil "enhancedAIModule_01") then {
_unit removeAllEventHandlers "HandleDamage"; 

sleep 1;

_unit addeventhandler ["HandleDamage",{
		_unit = _this select 0;
		_selection = _this select 1;
		_passedDamage = _this select 2; 
		_source = _this select 3; 
		_projectile = _this select 4;

		_oldDamage = 0;

		switch(_selection)do{
		case("head"):{_oldDamage = _unit getHitPointDamage "HitHead";};
		case("body"):{_oldDamage = _unit getHitPointDamage "HitBody";};
		case("hands"):{_oldDamage = _unit getHitPointDamage "HitHands";};
		case("legs"):{_oldDamage = _unit getHitPointDamage "HitLegs";};
		
		case(""):{_oldDamage = damage _unit;}; default{}; };
		_return = _oldDamage + ((_passedDamage - _oldDamage) * 0.15);
		_return
}];

sleep 1;

_unit addEventHandler ["Reloaded", 
{
	params ["_unit", "_weapon", "_muzzle", "_newmag", "_oldmag"];
	
	_ammoCount = _oldmag select 1;
	_magazineClass = _oldmag select 0;
	
	if (_ammoCount < 1) then {
		if (_magazineClass isEqualTo "") exitWith {};
		_unit addMagazine _magazineClass
	};
}];



};

sleep 1;

// ===== AI QoL =====

if (!isNil "AIQoLModule_01") then {
_unit addaction 
 [  
 "<t color='#8bd9d9'>Unstick Unit</t>",
	{
		_stuckUnit = (_this select 0);
		_unitGroup = group _stuckUnit;
		_unitVehicle = vehicle leader _unitGroup;
				
		_stuckUnit setPosATL (getPosATL leader _unitGroup);
		_stuckUnit moveinAny _unitVehicle;
		
	},  
  [],  
  1.5,  
  false,  
  true,  
  "",  
  "side player == WEST",  
  6 
  ];

sleep 1;

_unit addAction
 [  
 "<t color='#d5d98b'>Dismiss Unit</t>",
	{
		_stuckUnit = (_this select 0);
		deleteVehicle _stuckUnit;
	},  
  [],  
  1.5,  
  false,  
  true,  
  "",  
  "side player == WEST",  
  6 
  ];
  
};

sleep 1;

if (!isServer) exitWith {};


// ===== TRIAGE SYSTEM =====

if (!isNil "AITriageSystemModule_01") then {
// This makes the unit compatible with Citadel's Triage system
_unit addMPEventHandler ["MPKilled", { 
 params ["_unit", "_killer", "_instigator", "_useEffects"]; 
 
[_unit, _killer, _instigator, _useEffects] execVM "scripts\triageSystem.sqf";

}];

};