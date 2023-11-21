// https://community.bistudio.com/wiki/Event_Scripts

//This adds a "1PH" command category to declutter the ACE menu
_command1PHcode = {
	hint "Use the sub-menus for 1PH special functions";
};

_command1PHaction = ["1PH","1PH","",_command1PHcode,{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _command1PHaction] call ace_interact_menu_fnc_addActionToObject;


//This enables players to place down grass cutters, which removes the grass around them
_AceGrassCut = ["grass_cut","Cut Grass","",
	{[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
	[10,[],{_cutter = "Land_ClutterCutter_medium_F" createVehicle [0,0,0];
	 _cutter setPos (getPos player); hint "Grass Cut"},{hint "Cutting interupted"},"Cutting Grass"] call ace_common_fnc_progressBar
	},{true}] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "1PH"], _AceGrassCut] call ace_interact_menu_fnc_addActionToObject;

// Adds Platoon Rally Point deployment ability to all players when they become team lead.  This will also disable this ability on any Pathfinders, Air Squadron members, or Para-Cavalry troops.  Also, if RPWestTerminal or RPWest objects are deleted, this will disable the system.
_WplatoonRP = ["Wplatoon_rp","Deploy Platoon RP","",
	{
	_num = player nearEntities ['Man',15];
	if(leader player == player) then
		{
			if(count _num >2) then
				{
					[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
					[40,[],{
						
					RPwest setVehiclePosition [(player modelToWorld[0,2,0]), [],0.5, "CAN_COLLIDE"];
					wsquadRP1 setVehiclePosition [(player modelToWorld[1.5,1.5,0]), [],0.2, "CAN_COLLIDE"];
					wsquadRP2 setVehiclePosition [(player modelToWorld[-1.5,3,0]), [],0.2, "CAN_COLLIDE"];
					wsquadRP3 setVehiclePosition [(player modelToWorld[-1.5,1,0]), [],0.2, "CAN_COLLIDE"];
					hint "Rally Point Deployed";
					"RPMARK_1" setmarkerpos player;
					
					}
					
					,
					
					{hint "Deploying interrupted"},"Deploying Rally point"] call ace_common_fnc_progressBar
				}
			else
				{
					hint 'Need more allies nearby to deploy Rally Point'
				}
		}
	else
		{
			hint 'Become the Team leader via ACE interactions and try again'
		}
	},{true}] call ace_interact_menu_fnc_createAction;

if ((!isNil {player getVariable "slot_AirSquadron"}) OR (!isNil {player getVariable "slot_Cavalry"}) OR (!isNil {player getVariable "slot_Pathfinder"}) OR (!isNil {player getVariable "slot_StrapHanger"})) then {} else {
[player, 1, ["ACE_SelfActions","1PH"], _WplatoonRP] call ace_interact_menu_fnc_addActionToObject;
};

// FARP Setup
if (!isNil "farpLogic_01") then {
	// Adds FARP deployment and packing ability to Cav players.
	_FARPAbility = ["FARPAbility","Deploy Mobile FARP","",
		{
		_num = player nearEntities ['Man',15];
		
				if (mobileFARPEmergencyPack == false) then
					{
						farpLogic_01 setPosATL (getPosATL player);
						farpLogic_01 setDir ((getDir player)-45);
						
						[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
						[40,[],{
							
							
							[[],"scripts\mobileFARP\mobileFARP_setup.sqf"] remoteExec ["execVM",0];
							
							},{hint "Deploying interrupted"
							},"Deploying Mobile FARP"] call ace_common_fnc_progressBar;

					}
				else
					{
						hint 'The FARP had to emergency withdraw recently.  Wait several minutes and try again.'
					}
			
		},{true}] call ace_interact_menu_fnc_createAction;

	if (isNil {player getVariable "slot_Cavalry"}) then {} else {
	[player, 1, ["ACE_SelfActions","1PH"], _FARPAbility] call ace_interact_menu_fnc_addActionToObject;
	};

	// Adds FARP packing ability to Cav players
	_FARPPackability = ["FARPPackAbility","Pack Mobile FARP","",
		{
			
				if(player distance farpLogic_01 < 15) then
					{
						[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
						[10,[],{
							
							[[],"scripts\mobileFARP\mobileFARP_pack.sqf"] remoteExec ["execVM",0];
							
							},{hint "Deploying interrupted"},"Packing Mobile FARP"] call ace_common_fnc_progressBar;

					}
				else
					{
						hint 'Need to be near center of FARP to pack it.'
					}
			
		},{true}] call ace_interact_menu_fnc_createAction;
		
	if (isNil {player getVariable "slot_Cavalry"}) then {} else {
	[player, 1, ["ACE_SelfActions","1PH"], _FARPPackAbility] call ace_interact_menu_fnc_addActionToObject;
	};
};

// Adds marker panel deployment to Cav guys.
_dropSystemTarp = ["dropSystemTarp","Deploy Signal Panel (Yellow)","",
	{
	
					[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
					[5,[],{_panel = "Tarp_01_Large_Yellow_F" createVehicle position player;},{hint "Deploying interrupted"},"Deploying Signal Panel (Yellow)"] call ace_common_fnc_progressBar;
					_panel setVehiclePosition [(player modelToWorld[0,0,0.0]), [],1.5, "CAN_COLLIDE"];
					_panel setDir (getDir player);
		
	},{true}] call ace_interact_menu_fnc_createAction;

if (isNil {player getVariable "slot_Cavalry"}) then {} else {
[player, 1, ["ACE_SelfActions","1PH"], _dropSystemTarp] call ace_interact_menu_fnc_addActionToObject;
};

// Adds ability to track OPFOR units.
_playerTrackingOpfor = ["playerTrackingOpfor","Check for tracks","",
	{

		[player, "Acts_Ambient_Picking_Up",1] call ace_common_fnc_doAnimation;
		
		[10,[],{[player,300] execVM "scripts\pathFinderTracking.sqf";}
		,
		{hint "Tracking cancelled"},"Checking for tracks"] call ace_common_fnc_progressBar
				
		
	},{true}] call ace_interact_menu_fnc_createAction;

if (isNil {player getVariable "slot_PathFinder"}) then {} else {
[player, 1, ["ACE_SelfActions","1PH"], _playerTrackingOpfor] call ace_interact_menu_fnc_addActionToObject;
};

//This enables Citadel's Triage System if the module is present
if (!isNil "citadelsTriageSystemModule_01") then {
	player addMPEventHandler ["MPKilled", { 
	 params ["_unit", "_killer", "_instigator", "_useEffects"]; 
	 
	[_unit, _killer, _instigator, _useEffects] execVM "scripts\triageSystem.sqf";

	}];
};

