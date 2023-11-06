//Create a gamelogic and place it somewhere you want to simulate the aircraft flying from
//Name that gamelogic "SSS_airItems_01" and put this in the init:
// execVM "scripts\add_SSS_air_drops.sqf";

if (!isServer) exitWith {};

sleep 10;

[
"B_T_VTOL_01_vehicle_F",   //Classname of the air-dropping vehicle.     
"WIZARD 2-1 (Airdrop Supplies)",   //Callsign of the support service.      
getposASL SSS_airItems_01,     //Location of the airlift start  
(300 + (random 300)), //Spawn delay      
120, //Flying height
//
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
"[_this] execVM 'scripts\simplexSupport\tarpSystem.sqf';",    //Custom init code for every dropped item.     
1,     //Maximum number of dropped items.
0,     //Color of marking smoke.  0=none, 1=yellow, 2=green, 3=red, 4=blue
300,   //Cooldown after use    
{
(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
(group _this) setVariable ["acex_headless_blacklist",true,true];
(group driver _this) setVariable ["daoExclude",true, true];
}, //Custom init for the air dropping vehicle itself
BLUFOR, //Side      
[
"itemMap"
],  //Access items.  Player must have one to use the asset remotely.
"player getVariable 'slot_Cavalry'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
       
] call SSS_support_fnc_addLogisticsAirdrop;

sleep 1;

[
"B_T_VTOL_01_vehicle_F",   //Classname of the air-dropping vehicle.     
"WIZARD 2-2 (Airdrop Supplies)",   //Callsign of the support service.      
getposASL SSS_airItems_01,     //Location of the airlift start  
(300 + (random 300)), //Spawn delay     
120, //Flying height
//
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
"[_this] execVM 'scripts\simplexSupport\tarpSystem.sqf';",    //Custom init code for every dropped item.     
1,     //Maximum number of dropped items.
0,     //Color of marking smoke.  0=none, 1=yellow, 2=green, 3=red, 4=blue
300,   //Cooldown after use    
{
(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
(group _this) setVariable ["acex_headless_blacklist",true,true];
(group driver _this) setVariable ["daoExclude",true, true];
}, //Custom init for the air dropping vehicle itself
BLUFOR, //Side      
[
"itemMap"
],  //Access items.  Player must have one to use the asset remotely.
"player getVariable 'slot_Cavalry'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
           
] call SSS_support_fnc_addLogisticsAirdrop;

sleep 1;

[
"B_T_VTOL_01_vehicle_F",   //Classname of the air-dropping vehicle.     
"WIZARD 2-3 (Airdrop Supplies)",   //Callsign of the support service.      
getposASL SSS_airItems_01,     //Location of the airlift start  
(300 + (random 300)), //Spawn delay     
120, //Flying height
//
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
"[_this] execVM 'scripts\simplexSupport\tarpSystem.sqf';",    //Custom init code for every dropped item.     
1,     //Maximum number of dropped items.
0,     //Color of marking smoke.  0=none, 1=yellow, 2=green, 3=red, 4=blue
300,   //Cooldown after use    
{
(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
(group _this) setVariable ["acex_headless_blacklist",true,true];
(group driver _this) setVariable ["daoExclude",true, true];
}, //Custom init for the air dropping vehicle itself
BLUFOR, //Side      
[
"itemMap"
],  //Access items.  Player must have one to use the asset remotely.
"player getVariable 'slot_Cavalry'", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
        
] call SSS_support_fnc_addLogisticsAirdrop;