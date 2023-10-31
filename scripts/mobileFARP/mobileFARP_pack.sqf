_logisticsHubObjectList = [
logisticsHub_fuel_01,
logisticsHub_medical_01,
logisticsHub_repair_01,
logisticsHub_ammo_01,
logisticsHub_lamp_01_01,
logisticsHub_lamp_02_01,
logisticsHub_lamp_03_01,
logisticsHub_lamp_04_01
];

{
	_x enableSimulationGlobal false;
	_x hideObjectGlobal true;
	_x allowdamage false;
	_x setPosASL [0,0,0];
	
} forEach _logisticsHubObjectList;

farpLogic_01 setPosASL [0,0,0];
mobileFarp_enemyCheck setPosASL [0,0,0];

if (mobileFARPEmergencyPack == true) then {
	sleep 300;
	mobileFARPEmergencyPack = false;
	publicVariable "mobileFARPEmergencyPack";
};

//"farpMarker_01" setMarkerAlpha 0;
//"farpMarker_01" setMarkerDir 0;