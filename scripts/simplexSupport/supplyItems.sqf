if (!isServer) exitWith {};

sleep 10;

//Adds custom Hussar-only supply spawning
[
getposASL SSS_SupplyItems_01, //Code which tells the game where to put the crate     
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
	
	"B_BLUCW_80_M151A1_Transport_01", 
	"B_BLUCW_80_M151A1_Transport_Covered_01", 
	"B_BLUCW_80_M54_Transport_01", 
	"B_BLUCW_80_M54_Transport_Covered_01"
	
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
getposASL SSS_SupplyItems_01, //Code which tells the game where to put the crate     
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
	
	"B_BLUCW_80_M113A1_Transport_01", 
	"B_BLUCW_80_M125A1_M29_Mortar_01", 
	"B_BLUCW_80_M132A1_Flamethrower_01", 
	"B_BLUCW_80_M577A1_Ambulance_01", 
	"B_BLUCW_80_M577A1_Command_01", 
	"B_BLUCW_80_M41_Walker_01", 
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
	"B_BLUCW_80_M40A1_106mm_Recoilless_Rifle_01"
	
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
getposASL SSS_SupplyItems_01, //Code which tells the game where to put the crate     
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
  
	"B_BLUCW_80_ACH_47A_Guns_AGo_Go_M200_01", 
	"B_BLUCW_80_ACH_47A_Guns_AGo_Go_XM18_01", 
	"B_BLUCW_80_AH1G_01", 
	"B_BLUCW_80_CH_47A_Chinook_01", 
	"B_BLUCW_80_CH_47A_Chinook_M60_01", 
	"B_BLUCW_80_CH_47A_Chinook_M60_Cargo_01", 
	"B_BLUCW_80_UH_1B_Iroquios_Dust_off_01", 
	"B_BLUCW_80_UH_1B_Iroquois_Slick_01", 
	"B_BLUCW_80_UH_1C_Iroquois_Gunship_01", 
	"B_BLUCW_80_UH_1C_Iroquois_Heavy_Hog_01", 
	"B_BLUCW_80_UH_1C_Iroquois_Hog_01", 
	"B_BLUCW_80_UH_1D_Iroquios_Dust_off_01", 
	"B_BLUCW_80_UH_1D_Iroquois_Bushranger_01",
	
	["B_supplyCrate_F","=== WOODLAND ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_BLUCW_80_M151A1_Transport_01", 
	"B_BLUCW_80_M151A1_Transport_Covered_01", 
	"B_BLUCW_80_M185_Repair_Truck_01", 
	"B_BLUCW_80_M49_Fuel_Truck_01", 
	"B_BLUCW_80_M54_Ammo_Truck_01", 
	"B_BLUCW_80_M54_Transport_01", 
	"B_BLUCW_80_M54_Transport_Covered_01"
	
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
getposASL SSS_SupplyItems_01, //Code which tells the game where to put the crate     
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
	
	"B_BLUCW_80_M151A1_Transport_01", 
	"B_BLUCW_80_M151A1_Transport_Covered_01", 
	"B_BLUCW_80_Legionnaire_01", 
	"B_BLUCW_80_M151A1_Patrol_01"
	
]},
// This is the end of the menu for droppable items.
"", //Custom init to put on each spawned item 
BLUFOR, //Side      
["itemMap"], //Access items.  Player must have at least one to use support.
"player getVariable 'slot_Pathfinder'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
       
] call SSS_support_fnc_addLogisticsStation;
