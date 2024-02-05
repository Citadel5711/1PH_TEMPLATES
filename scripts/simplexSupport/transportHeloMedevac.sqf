//Name your vehicles "tran_helo_1", "tran_helo_1" and so on.  Add more iterations below if you need more vehicles.
//Then, add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_transport.sqf";

if (!isServer) exitWith {};

sleep 10;

[
tran_helo_4,
"WITCH DOCTOR (UH-1C MEDEVAC)", //Callsign.  Leave blank for default.
600, //Respawn time in seconds.
{_this setcaptive true;

(group _this) setVariable ["zhc_offload_blacklisted",true,true];
(group _this) setVariable ["acex_headless_blacklist",true,true];
(group driver _this) setVariable ["daoExclude",true, true];

[_this,  
 [  
 "<t color='#00CDFF'>Heal</t>",  
 "  
 [player] call ace_common_fnc_goKneeling;  
  [  
   20,   
   [],   
	{_heallist = player nearEntities 10;
    {
		[_healList, 0] call zen_context_actions_fnc_healUnits;
	}forEach _heallist;  
    hint 'Healing complete'
	},  
   {hint 'Healing interrupted'},  
   'Healing'  
  ] call ace_common_fnc_progressBar",  
  [],  
  1.5,  
  false,  
  true,  
  "",  
  "side player == WEST",  
  6 
  ]  
] remoteExec ["addAction",0,true];

_this addEventHandler ["GetIn", {
	params ["_vehicle", "_role", "_unit", "_turret"];
	removeAllWeapons _unit;
}];

}, //Custom init code.
["itemMap"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Variable must be true if player can use asset.
"true" //Request approval condition.  Variable must be true if player request is accepted.
] call SSS_support_fnc_addTransport;