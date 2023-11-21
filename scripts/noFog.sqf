if (!isServer) exitWith {};

while {isServer} do {
	//hint "Fog Adjust";
	(120*timeMultiplier) setFog [0.0,0.0,00];
	(120*timeMultiplier) setOvercast 0.25;
	(120*timeMultiplier) setRain 0;
	sleep 180;
};