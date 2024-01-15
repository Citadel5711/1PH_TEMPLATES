//Name your artillery units "arty_1", "arty_2" and so on.  Add more iterations below if you need more vehicles.
//Then, add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_artillery.sqf";

if (!isServer) exitWith {};

sleep 10;


[ 
arty_1, 
"STEEL RAIN 1-1 (82mm Mortar)", //Callsign/  Leave blank for default.
600, //Respawn time
[120,10], //Cooldown.  First number is the base cooldown time.  Second number is extra cooldown time for each round fired.
24, //Maximum rounds per fire mission.
100, //Distance in meters for coordination with other similar artillery units.
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true]; _this enableRopeAttach false;}, //Custom init code
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
"player getVariable 'slot_JSOC'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for support provider to approve request.
] call SSS_support_fnc_addArtillery;

sleep 1;

[ 
arty_2, 
"STEEL RAIN 1-2 (82mm Mortar)", //Callsign/  Leave blank for default.
600, //Respawn time
[120,10], //Cooldown.  First number is the base cooldown time.  Second number is extra cooldown time for each round fired.
24, //Maximum rounds per fire mission.
100, //Distance in meters for coordination with other similar artillery units.
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true]; _this enableRopeAttach false;}, //Custom init code
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
"player getVariable 'slot_JSOC'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for support provider to approve request.
] call SSS_support_fnc_addArtillery;

sleep 1;

[ 
arty_3, 
"STEEL RAIN 1-3 (82mm Mortar)", //Callsign/  Leave blank for default.
600, //Respawn time
[120,10], //Cooldown.  First number is the base cooldown time.  Second number is extra cooldown time for each round fired.
24, //Maximum rounds per fire mission.
100, //Distance in meters for coordination with other similar artillery units.
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true]; _this enableRopeAttach false;}, //Custom init code
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
"player getVariable 'slot_JSOC'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for support provider to approve request.
] call SSS_support_fnc_addArtillery;

sleep 1;

[  
arty_4,  
"CONVICT 2-1 (105mm Artillery)", //Callsign/  Leave blank for default. 
600, //Respawn time
[120,10], //Cooldown.  First number is the base cooldown time.  Second number is extra cooldown time for each round fired. 
24, //Maximum rounds per fire mission. 
100, //Distance in meters for coordination with other similar artillery units. 
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true]; _this enableRopeAttach false;}, //Custom init code 
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
{radioCodeDelta == true AND player getVariable 'slot_JSOC'}, //Access condition.  Must be true for players to see support. 
"true"  //Access permission.  Must be true for support provider to approve request. 
] call SSS_support_fnc_addArtillery;

sleep 1;

[  
arty_5,  
"CONVICT 2-2 (105mm Artillery)", //Callsign/  Leave blank for default. 
600, //Respawn time 
[120,10], //Cooldown.  First number is the base cooldown time.  Second number is extra cooldown time for each round fired. 
24, //Maximum rounds per fire mission. 
100, //Distance in meters for coordination with other similar artillery units. 
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true]; _this enableRopeAttach false;}, //Custom init code 
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
{radioCodeDelta == true AND player getVariable 'slot_JSOC'}, //Access condition.  Must be true for players to see support. 
"true"  //Access permission.  Must be true for support provider to approve request. 
] call SSS_support_fnc_addArtillery;

sleep 1;

[  
arty_6,  
"CONVICT 2-3 (105mm Artillery)", //Callsign/  Leave blank for default. 
600, //Respawn time 
[120,10], //Cooldown.  First number is the base cooldown time.  Second number is extra cooldown time for each round fired. 
24, //Maximum rounds per fire mission. 
100, //Distance in meters for coordination with other similar artillery units. 
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true]; _this enableRopeAttach false;}, //Custom init code 
[
"ACRE_PRC77",
"ACRE_PRC117F"
],  //Access items.  Player must have one to use the asset remotely.
{radioCodeDelta == true AND player getVariable 'slot_JSOC'}, //Access condition.  Must be true for players to see support. 
"true"  //Access permission.  Must be true for support provider to approve request. 
] call SSS_support_fnc_addArtillery;