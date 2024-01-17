if (!isServer) exitWith {};

sleep 10;

//Adds custom Hussar-only supply spawning
[
getposATL SSS_SupplyItems_01, //Code which tells the game where to put the crate     
getDir SSS_SupplyItems_01, //Code which tells the game which direction (in degrees) to point the spawned item
"Supplies and Vehicles (Para-Hussar)",//Callsign of service
// Below is the menu for droppable items.      
{[
	["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","Arsenal Box (5 Minutes)","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
		[_this,["Open Arsenal Box","[(_this select 0)] execVM 'scripts\timedArsenalBall.sqf'",[],1.5,false,true,"","_this distance _target < 2"]] remoteExec ["addAction",0];	
    }], 	
   
	["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];		
    }],
  
	["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
  	
	["B_supplyCrate_F","=== WOODLAND ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_BLUCW_90_MOTORCYCLE_01", 
	"B_BLUCW_90_JEEP_MG_01", 
	"B_BLUCW_90_JEEP_TRANS_01", 
	"B_BLUCW_90_JEEP_TRANS_02", 
	"B_BLUCW_90_TRUCK_FLATBED_MG_01", 
	"B_BLUCW_90_TRUCK_MEDIC_01", 
	"B_BLUCW_90_TRUCK_REPAIR_01", 
	"B_BLUCW_90_TRUCK_TRANSPORT_01", 
	"B_BLUCW_90_5T_TRUCK_AMMO_01", 
	"B_BLUCW_90_5T_TRUCK_FLATBED_01", 
	"B_BLUCW_90_5T_TRUCK_FUEL_01", 
	"B_BLUCW_90_5T_TRUCK_TRANSPORT_01"
	
	/*
	["B_supplyCrate_F","=== DESERT ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_BLUCW_80_M151A1_Transport_01", 
	"B_BLUCW_80_M151A1_Transport_Covered_01", 
	"B_BLUCW_80_M54_Transport_01", 
	"B_BLUCW_80_M54_Transport_Covered_01"
	*/

]},
// This is the end of the menu for droppable items.
"", //Custom init to put on each spawned item 
BLUFOR, //Side      
["itemMap"], //Access items.  Player must have at least one to use support.
"player getVariable 'slot_ParaHussar'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
       
] call SSS_support_fnc_addLogisticsStation;

sleep 1;

//Adds custom cav-only supply spawning
[
getposATL SSS_SupplyItems_01, //Code which tells the game where to put the crate     
getDir SSS_SupplyItems_01, //Code which tells the game which direction (in degrees) to point the spawned item
"Supplies and Vehicles (Cavalry)",//Callsign of service
// Below is the menu for droppable items.      
{[
	["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","Arsenal Box (5 Minutes)","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
		[_this,["Open Arsenal Box","[(_this select 0)] execVM 'scripts\timedArsenalBall.sqf'",[],1.5,false,true,"","_this distance _target < 2"]] remoteExec ["addAction",0];	
    }], 
   
	["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];		
    }],
  
	["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","=== WOODLAND ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_BLUCW_90_M113_MG_01", 
	"B_BLUCW_90_LUCHSA1_01", 
	"B_BLUCW_90_LUCHSA2_01", 
	"B_BLUCW_90_FUCHS_COMMAND_01", 
	"B_BLUCW_90_FUCHS_ENGINEER_01", 
	"B_BLUCW_90_FUCHS_RECON_01", 
	"B_BLUCW_90_M101_HOWITZER_01", 
	"B_BLUCW_90_M113_MORTAR_01", 
	"B_BLUCW_90_M2_MORTAR_01", 
	"B_BLUCW_90_M29_MORTAR_01", 
	"B_BLUCW_90_MOTORCYCLE_01", 
	"B_BLUCW_90_JEEP_MG_ARMORED_01", 
	"B_BLUCW_90_JEEP_MG_01", 
	"B_BLUCW_90_JEEP_PATROL_01", 
	"B_BLUCW_90_JEEP_TOW_01", 
	"B_BLUCW_90_JEEP_TRANS_01", 
	"B_BLUCW_90_JEEP_TRANS_02", 
	"B_BLUCW_90_TRUCK_FLATBED_MG_01", 
	"B_BLUCW_90_TRUCK_MEDIC_01", 
	"B_BLUCW_90_TRUCK_REPAIR_01", 
	"B_BLUCW_90_TRUCK_TRANSPORT_01", 
	"B_BLUCW_90_5T_TRUCK_AMMO_01", 
	"B_BLUCW_90_5T_TRUCK_FLATBED_01", 
	"B_BLUCW_90_5T_TRUCK_FUEL_01", 
	"B_BLUCW_90_5T_TRUCK_TRANSPORT_01", 
	"B_BLUCW_90_TOW_TURRET_01", 
	"B_BLUCW_90_M2_TURRET_HIGH_01", 
	"B_BLUCW_90_M2_TURRET_LOW_01", 
	"B_BLUCW_90_M60_TURET_HIGH_01", 
	"B_BLUCW_90_M60_TURRET_LOW_01"
	
	/*
	["B_supplyCrate_F","=== DESERT ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_BLUCW_80_M109_Command_Truck_01", 
	"B_BLUCW_80_M151A1_Armored_01", 
	"B_BLUCW_80_M151A1_M2_01", 
	"B_BLUCW_80_M151A1_M40A1_01", 
	"B_BLUCW_80_M151A1_Patrol_01", 
	"B_BLUCW_80_M151A1_Transport_01", 
	"B_BLUCW_80_M151A1_Transport_Covered_01", 
	"B_BLUCW_80_M185_Repair_Truck_01", 
	"B_BLUCW_80_M49_Fuel_Truck_01", 
	"B_BLUCW_80_M54_Ammo_Truck_01", 
	"B_BLUCW_80_M54_Transport_01", 
	"B_BLUCW_80_M54_Transport_Covered_01", 
	"B_BLUCW_80_M55_AA_Truck_Quad_01", 
	"B_BLUCW_80_M101_105mm_Howitzer_01", 
	"B_BLUCW_80_M2_60mm_Mortar_01", 
	"B_BLUCW_80_M29_81mm_Mortar_01", 
	"B_BLUCW_80_M101_105mm_Anti_tank_gun_01", 
	"B_BLUCW_80_M1919A4_30cal_High_01", 
	"B_BLUCW_80_M1919A4_30cal_Low_01", 
	"B_BLUCW_80_M1919A6_30cal_01", 
	"B_BLUCW_80_M2HB_50cal_High_01", 
	"B_BLUCW_80_M2HB_50cal_Low_01", 
	"B_BLUCW_80_M40A1_106mm_Recoilless_Rifle_01",
	*/

]},
// This is the end of the menu for droppable items.
"", //Custom init to put on each spawned item 
BLUFOR, //Side      
["itemMap"], //Access items.  Player must have at least one to use support.
"player getVariable 'slot_Cavalry'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
       
] call SSS_support_fnc_addLogisticsStation;

sleep 1;

//Adds custom air-only supply spawning
[
getposATL SSS_SupplyItems_01, //Code which tells the game where to put the crate     
getDir SSS_SupplyItems_01, //Code which tells the game which direction (in degrees) to point the spawned item
"Supplies and Vehicles (Air Squadron)",//Callsign of service
// Below is the menu for droppable items.      
{[
	["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","Arsenal Box (5 Minutes)","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
		[_this,["Open Arsenal Box","[(_this select 0)] execVM 'scripts\timedArsenalBall.sqf'",[],1.5,false,true,"","_this distance _target < 2"]] remoteExec ["addAction",0];	
    }],	
   
	["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];		
    }],
  
	["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
  
	["B_supplyCrate_F","=== AIRCRAFT ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
  
	"B_BLUCW_90_GUNSAGOGO_04", 
	"B_BLUCW_90_GUNSAGOGO_05", 
	"B_BLUCW_90_COBRA_01_BASE_02", 
	"B_BLUCW_90_LITTLEBIRD_02", 
	"B_BLUCW_90_CHINOOK_04", 
	"B_BLUCW_90_CHINOOK_03", 
	"B_BLUCW_90_CHINOOK_02", 
	"B_BLUCW_90_LITTLEBIRD_01", 
	"B_BLUCW_90_HUEY_MED_01", 
	"B_BLUCW_90_HUEY_07", 
	"B_BLUCW_90_HUEY_02", 
	"B_BLUCW_90_UH60_01", 
	"B_BLUCW_90_UH60_02", 
	"B_BLUCW_90_UH60_03",
	"B_BLUCW_90_F4C_01",
	
	["B_supplyCrate_F","=== WOODLAND ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_BLUCW_90_MOTORCYCLE_01", 
	"B_BLUCW_90_JEEP_TRANS_01", 
	"B_BLUCW_90_JEEP_TRANS_02", 
	"B_BLUCW_90_TRUCK_FLATBED_MG_01", 
	"B_BLUCW_90_TRUCK_MEDIC_01", 
	"B_BLUCW_90_TRUCK_REPAIR_01", 
	"B_BLUCW_90_TRUCK_TRANSPORT_01", 
	"B_BLUCW_90_5T_TRUCK_AMMO_01", 
	"B_BLUCW_90_5T_TRUCK_FLATBED_01", 
	"B_BLUCW_90_5T_TRUCK_FUEL_01", 
	"B_BLUCW_90_5T_TRUCK_TRANSPORT_01"
	
	/*
	["B_supplyCrate_F","=== DESERT ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_BLUCHUSD_B_Quadbike_01_F", 
	"B_BLUCHUSD_MRAP_03_F",
	"B_BLUCHUSD_Trakker_ammo_01", 
	"B_BLUCHUSD_Trakker_fuel_01", 
	"B_BLUCHUSD_Trakker_med_01", 
	"B_BLUCHUSD_Trakker_repair_01", 
	"B_BLUCHUSD_Trakker_02", 
	"B_BLUCHUSD_Trakker_01"
	*/

]},
// This is the end of the menu for droppable items.
"", //Custom init to put on each spawned item 
BLUFOR, //Side      
["itemMap"], //Access items.  Player must have at least one to use support.
"player getVariable 'slot_AirSquadron'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
       
] call SSS_support_fnc_addLogisticsStation;

sleep 1;

//Adds custom pathfinder-only supply spawning
[
getposATL SSS_SupplyItems_01, //Code which tells the game where to put the crate     
getDir SSS_SupplyItems_01, //Code which tells the game which direction (in degrees) to point the spawned item
"Supplies and Vehicles (Pathfinder)",//Callsign of service
// Below is the menu for droppable items.      
{[
	["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","Arsenal Box (5 Minutes)","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
		[_this,["Open Arsenal Box","[(_this select 0)] execVM 'scripts\timedArsenalBall.sqf'",[],1.5,false,true,"","_this distance _target < 2"]] remoteExec ["addAction",0];	
    }],	
   
	["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];		
    }],
  
	["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
  
	["Land_FoodSacks_01_cargo_white_idap_F","Humanitarian Aid","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\meet_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }],
	
	"B_BLUCW_90_MOTORCYCLE_01", 
	"B_BLUCW_90_JEEP_MG_01", 
	"B_BLUCW_90_JEEP_PATROL_01", 
	"B_BLUCW_90_JEEP_TRANS_01", 
	"B_BLUCW_90_JEEP_TRANS_02", 
	"B_BLUCW_90_TRUCK_FLATBED_MG_01", 
	"B_BLUCW_90_TRUCK_MEDIC_01", 
	"B_BLUCW_90_TRUCK_REPAIR_01", 
	"B_BLUCW_90_TRUCK_TRANSPORT_01", 
	"B_BLUCW_90_5T_TRUCK_AMMO_01", 
	"B_BLUCW_90_5T_TRUCK_FLATBED_01", 
	"B_BLUCW_90_5T_TRUCK_FUEL_01", 
	"B_BLUCW_90_5T_TRUCK_TRANSPORT_01"
	
]},
// This is the end of the menu for droppable items.
"", //Custom init to put on each spawned item 
BLUFOR, //Side      
["itemMap"], //Access items.  Player must have at least one to use support.
"player getVariable 'slot_Pathfinder'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
       
] call SSS_support_fnc_addLogisticsStation;
