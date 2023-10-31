_arsenalBox = (_this select 0);

if (!isNil "Hus_arsenal_reference_01") then {
//This adds a unique arsenal to the named arsenal ball
_phArsenal_1 = [
'phArsenal_1',
'Para-Hussar Arsenal',
'',
{
	[Hus_arsenal_reference_01, player] call ace_arsenal_fnc_openBox;
},
{player getVariable "arsenal_ParaHussar"}
] call ace_interact_menu_fnc_createAction; // This creates the ACE interaction option to open the arsenal using the script therein

//[_arsenalBox, 0,["ACE_MainActions"], _phArsenal_1] remoteExec ["ace_interact_menu_fnc_addActionToObject",0,true];
[_arsenalBox, 0, ["ACE_MainActions"], _phArsenal_1] call ace_interact_menu_fnc_addActionToObject;
};

if (!isNil "Cav_arsenal_reference_01") then {
//This adds a unique arsenal to the named arsenal ball
_cavArsenal_1 = [
'cavArsenal_1',
'Cavalry Arsenal',
'',
{
	[Cav_arsenal_reference_01, player] call ace_arsenal_fnc_openBox;
},
{player getVariable "arsenal_Cavalry"}
] call ace_interact_menu_fnc_createAction; // This creates the ACE interaction option to open the arsenal using the script therein

//[_arsenalBox, 0,["ACE_MainActions"], _cavArsenal_1] remoteExec ["ace_interact_menu_fnc_addActionToObject",0,true];
[_arsenalBox, 0, ["ACE_MainActions"], _cavArsenal_1] call ace_interact_menu_fnc_addActionToObject;
};

if (!isNil "Air_arsenal_reference_01") then {
//This adds a unique arsenal to the named arsenal ball
_airArsenal_1 = [
'airArsenal_1',
'Air Arsenal',
'',
{
	[Air_arsenal_reference_01, player] call ace_arsenal_fnc_openBox;
},
{player getVariable "arsenal_AirSquadron"}
] call ace_interact_menu_fnc_createAction; // This creates the ACE interaction option to open the arsenal using the script therein

//[_arsenalBox, 0,["ACE_MainActions"], _airArsenal_1] remoteExec ["ace_interact_menu_fnc_addActionToObject",0,true];
[_arsenalBox, 0, ["ACE_MainActions"], _airArsenal_1] call ace_interact_menu_fnc_addActionToObject;
};

if (!isNil "Path_arsenal_reference_01") then {
//This adds a unique arsenal to the named arsenal ball
_pathArsenal_1 = [
'pathArsenal_1',
'Pathfinder Arsenal',
'',
{
	[Path_arsenal_reference_01, player] call ace_arsenal_fnc_openBox;
},
{player getVariable "arsenal_Pathfinder"}
] call ace_interact_menu_fnc_createAction; // This creates the ACE interaction option to open the arsenal using the script therein

//[_arsenalBox, 0,["ACE_MainActions"], _pathArsenal_1] remoteExec ["ace_interact_menu_fnc_addActionToObject",0,true];
[_arsenalBox, 0, ["ACE_MainActions"], _pathArsenal_1] call ace_interact_menu_fnc_addActionToObject;
};

if (!isNil "Strap_arsenal_reference_01") then {
//This adds a unique arsenal to the named arsenal ball
_strapArsenal_1 = [
'strapArsenal_1',
'Straphanger Arsenal',
'',
{
	[Strap_arsenal_reference_01, player] call ace_arsenal_fnc_openBox;
},
{player getVariable "arsenal_Straphanger"}
] call ace_interact_menu_fnc_createAction; // This creates the ACE interaction option to open the arsenal using the script therein

//[_arsenalBox, 0,["ACE_MainActions"], _strapArsenal_1] remoteExec ["ace_interact_menu_fnc_addActionToObject",0,true];
[_arsenalBox, 0, ["ACE_MainActions"], _strapArsenal_1] call ace_interact_menu_fnc_addActionToObject;
};

if (!isNil "universal_arsenal_reference_01") then {
//This adds a unique arsenal to the named arsenal ball
_universalArsenal_1 = [
'universalArsenal_1',
'Arsenal',
'',
{
	[universal_arsenal_reference_01, player] call ace_arsenal_fnc_openBox;
},
{true}
] call ace_interact_menu_fnc_createAction; // This creates the ACE interaction option to open the arsenal using the script therein

//[_arsenalBox, 0,["ACE_MainActions"], _universalArsenal_1] remoteExec ["ace_interact_menu_fnc_addActionToObject",0,true];
[_arsenalBox, 0, ["ACE_MainActions"], _universalArsenal_1] call ace_interact_menu_fnc_addActionToObject;
};