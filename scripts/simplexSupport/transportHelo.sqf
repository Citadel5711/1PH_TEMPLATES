//Name your vehicles "tran_helo_1", "tran_helo_1" and so on.  Add more iterations below if you need more vehicles.
//Then, add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_transport.sqf";

if (!isServer) exitWith {};

sleep 10;

[
tran_helo_1,
"PEQUOD 5-1 (UH-1C)", //Callsign.  Leave blank for default.
600, //Respawn time in seconds.
{
	(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
	(group _this) setVariable ["acex_headless_blacklist",true,true];
	_this enableRopeAttach false;
	}, //Custom init code.
["itemMap"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Variable must be true if player can use asset.
"true" //Request approval condition.  Variable must be true if player request is accepted.
] call SSS_support_fnc_addTransport;

sleep 1;

[
tran_helo_2,
"PEQUOD 5-2 (UH-1C)", //Callsign.  Leave blank for default.
600, //Respawn time in seconds.
{
	(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
	(group _this) setVariable ["acex_headless_blacklist",true,true];
	_this enableRopeAttach false;
	}, //Custom init code.
["itemMap"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Variable must be true if player can use asset.
"true" //Request approval condition.  Variable must be true if player request is accepted.
] call SSS_support_fnc_addTransport;

sleep 1;

[
tran_helo_3,
"LONGSHIP (CH-47 Infantry)", //Callsign.  Leave blank for default.
600, //Respawn time in seconds.
{
	(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
	(group _this) setVariable ["acex_headless_blacklist",true,true];
	_this enableRopeAttach false;
	}, //Custom init code.
["itemMap"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Variable must be true if player can use asset.
"true" //Request approval condition.  Variable must be true if player request is accepted.
] call SSS_support_fnc_addTransport;

[
tran_helo_5,
"LITTLE MAC (CH-47 Cargo)", //Callsign.  Leave blank for default.
600, //Respawn time in seconds.
{
	(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
	(group _this) setVariable ["acex_headless_blacklist",true,true];
	_this enableRopeAttach false;
	}, //Custom init code.
["itemMap"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Variable must be true if player can use asset.
"true" //Request approval condition.  Variable must be true if player request is accepted.
] call SSS_support_fnc_addTransport;