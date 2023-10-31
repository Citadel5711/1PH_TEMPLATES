if (!isServer) exitWith {};

"farpMarker_01" setMarkerAlpha 0;

_logisticsHubObjectList = [
logisticsHub_fuel_01,
logisticsHub_medical_01,
logisticsHub_repair_01,
logisticsHub_ammo_01
];

{
	_x enableSimulationGlobal false;
	_x hideObjectGlobal true;
	_x allowdamage false;
	
} forEach _logisticsHubObjectList;

sleep 1;

mobileFarp_enemyCheck setPosATL (getPosATL farpLogic_01);

logisticsHub_fuel_01 setVehiclePosition [(farpLogic_01 modelToWorld[5,12,0]), [],0.5, "NONE"];
logisticsHub_fuel_01 setDir ((getDir farpLogic_01) + 90);
logisticsHub_fuel_01 setVectorUp surfaceNormal position logisticsHub_fuel_01;
logisticsHub_fuel_01 enableSimulationGlobal true;
logisticsHub_fuel_01 hideObjectGlobal false;
logisticsHub_fuel_01 allowdamage false;
logisticsHub_fuel_01 setAmmoCargo 1;
logisticsHub_fuel_01 setFuelCargo 1;
logisticsHub_fuel_01 setRepairCargo 1;

sleep (random 1.5);
logisticsHub_medical_01 setVehiclePosition [(farpLogic_01 modelToWorld[12,5,0]), [],0.5, "NONE"];
logisticsHub_medical_01 setDir ((getDir farpLogic_01) +  0);
logisticsHub_medical_01 setVectorUp surfaceNormal position logisticsHub_medical_01;
logisticsHub_medical_01 enableSimulationGlobal true;
logisticsHub_medical_01 hideObjectGlobal false;
logisticsHub_medical_01 allowdamage false;
logisticsHub_medical_01 setAmmoCargo 1;
logisticsHub_medical_01 setFuelCargo 1;
logisticsHub_medical_01 setRepairCargo 1;

sleep (random 1.5);
logisticsHub_repair_01 setVehiclePosition [(farpLogic_01 modelToWorld[-5,-12,0]), [],0.5, "NONE"];
logisticsHub_repair_01 setDir ((getDir farpLogic_01) + 90);
logisticsHub_repair_01 setVectorUp surfaceNormal position logisticsHub_repair_01;
logisticsHub_repair_01 enableSimulationGlobal true;
logisticsHub_repair_01 hideObjectGlobal false;
logisticsHub_repair_01 allowdamage false;
logisticsHub_repair_01 setAmmoCargo 1;
logisticsHub_repair_01 setFuelCargo 1;
logisticsHub_repair_01 setRepairCargo 1;

sleep (random 1.5);
logisticsHub_ammo_01 setVehiclePosition [(farpLogic_01 modelToWorld[-12,-5,0]), [],0.5, "NONE"];
logisticsHub_ammo_01 setDir ((getDir farpLogic_01) + 0);
logisticsHub_ammo_01 setVectorUp surfaceNormal position logisticsHub_ammo_01;
logisticsHub_ammo_01 enableSimulationGlobal true;
logisticsHub_ammo_01 hideObjectGlobal false;
logisticsHub_ammo_01 allowdamage false;
logisticsHub_ammo_01 setAmmoCargo 1;
logisticsHub_ammo_01 setFuelCargo 1;
logisticsHub_ammo_01 setRepairCargo 1;

sleep (random 0.5);
logisticsHub_lamp_01_01 setVehiclePosition [(farpLogic_01 modelToWorld[0,5,0]), [],0.1, "CAN_COLLIDE"];
logisticsHub_lamp_01_01 setDir ((getDir farpLogic_01) + 0);
logisticsHub_lamp_01_01 setVectorUp surfaceNormal position logisticsHub_lamp_01_01;
logisticsHub_lamp_01_01 enableSimulationGlobal true;
logisticsHub_lamp_01_01 hideObjectGlobal false;
logisticsHub_lamp_01_01 allowdamage false;

sleep (random 0.5);
logisticsHub_lamp_02_01 setVehiclePosition [(farpLogic_01 modelToWorld[0,-5,0]), [],0.1, "CAN_COLLIDE"];
logisticsHub_lamp_02_01 setDir ((getDir farpLogic_01) + 0);
logisticsHub_lamp_02_01 setVectorUp surfaceNormal position logisticsHub_lamp_02_01;
logisticsHub_lamp_02_01 enableSimulationGlobal true;
logisticsHub_lamp_02_01 hideObjectGlobal false;
logisticsHub_lamp_02_01 allowdamage false;

sleep (random 0.5);
logisticsHub_lamp_03_01 setVehiclePosition [(farpLogic_01 modelToWorld[5,0,0]), [],0.1, "CAN_COLLIDE"];
logisticsHub_lamp_03_01 setDir ((getDir farpLogic_01) + 0);
logisticsHub_lamp_03_01 setVectorUp surfaceNormal position logisticsHub_lamp_03_01;
logisticsHub_lamp_03_01 enableSimulationGlobal true;
logisticsHub_lamp_03_01 hideObjectGlobal false;
logisticsHub_lamp_03_01 allowdamage false;

sleep (random 0.5);
logisticsHub_lamp_04_01 setVehiclePosition [(farpLogic_01 modelToWorld[-5,0,0]), [],0.1, "CAN_COLLIDE"];
logisticsHub_lamp_04_01 setDir ((getDir farpLogic_01) + 0);
logisticsHub_lamp_04_01 setVectorUp surfaceNormal position logisticsHub_lamp_04_01;
logisticsHub_lamp_04_01 enableSimulationGlobal true;
logisticsHub_lamp_04_01 hideObjectGlobal false;
logisticsHub_lamp_04_01 allowdamage false;

//"farpMarker_01" setMarkerPos farpLogic_01;
//"farpMarker_01" setMarkerAlpha 100;