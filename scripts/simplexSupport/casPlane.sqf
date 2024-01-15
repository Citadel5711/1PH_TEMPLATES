//Add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_cas_plane.sqf";

if (!isServer) exitWith {};

sleep 10;

[

"B_BLUCW_90_F4C_01", //Aircraft Classname 
"Lancer 3-1 (F-4C Phantom II)", //Callsign.  Leave blank for default. 
["Twin_Cannon_20mm","Bomb_04_Plane_CAS_01_F","Rocket_04_HE_Plane_CAS_01_F","Rocket_04_AP_Plane_CAS_01_F"], //Weapon Set.  Leave blank for default loadout. 
600, //Cooldown after use 
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code 
BLUFOR, //Side of unit 
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
"player getVariable 'slot_JSOC'",  //Access condition.  Must be true for asset to appear at all.
"true"  //Access permission.  Must be true for player's request to be approved. 

] call SSS_support_fnc_addCasPlane;

sleep 1;

[

"B_BLUCW_90_F4C_01", //Aircraft Classname 
"Lancer 3-2 (F-4C Phantom II)", //Callsign.  Leave blank for default. 
["Twin_Cannon_20mm","Bomb_04_Plane_CAS_01_F","Rocket_04_HE_Plane_CAS_01_F","Rocket_04_AP_Plane_CAS_01_F"], //Weapon Set.  Leave blank for default loadout. 
600, //Cooldown after use 
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code 
BLUFOR, //Side of unit 
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
"player getVariable 'slot_JSOC'",  //Access condition.  Must be true for asset to appear at all.
"true"  //Access permission.  Must be true for player's request to be approved. 

] call SSS_support_fnc_addCasPlane;

sleep 1;

[

"B_BLUCW_90_F4C_01", //Aircraft Classname 
"Hurricane 1-1 (F-4C Phantom II)", //Callsign.  Leave blank for default. 
[], //Weapon Set.  Leave blank for default loadout. 
((random 360)+300), //Cooldown after use 
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code 
BLUFOR, //Side of unit 
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
{radioCodeDelta == true AND player getVariable 'slot_JSOC'}, //Access condition.  Must be true for players to see support. 
"true"  //Access permission.  Must be true for player's request to be approved. 

] call SSS_support_fnc_addCasPlane;

sleep 1;

[

"B_BLUCW_90_F4C_01", //Aircraft Classname 
"Hurricane 1-2 (F-4C Phantom II)", //Callsign.  Leave blank for default. 
[], //Weapon Set.  Leave blank for default loadout. 
180, //Cooldown after use 
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code 
BLUFOR, //Side of unit 
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
{radioCodeDelta == true AND player getVariable 'slot_JSOC'}, //Access condition.  Must be true for players to see support. 
"true"  //Access permission.  Must be true for player's request to be approved. 

] call SSS_support_fnc_addCasPlane;

sleep 1;

[

"B_BLUCW_90_F4C_01", //Aircraft Classname 
"Hurricane 3-1 (F-4C Phantom II)", //Callsign.  Leave blank for default. 
[], //Weapon Set.  Leave blank for default loadout. 
180, //Cooldown after use 
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code 
BLUFOR, //Side of unit 
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
{radioCodeDelta == true AND player getVariable 'slot_JSOC'}, //Access condition.  Must be true for players to see support. 
"true"  //Access permission.  Must be true for player's request to be approved. 

] call SSS_support_fnc_addCasPlane;

sleep 1;

[

"B_BLUCW_90_F4C_01", //Aircraft Classname 
"Hurricane 3-2 (F-4C Phantom II)", //Callsign.  Leave blank for default. 
[], //Weapon Set.  Leave blank for default loadout. 
180, //Cooldown after use 
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code 
BLUFOR, //Side of unit 
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
{radioCodeDelta == true AND player getVariable 'slot_JSOC'}, //Access condition.  Must be true for players to see support. 
"true"  //Access permission.  Must be true for player's request to be approved. 

] call SSS_support_fnc_addCasPlane;