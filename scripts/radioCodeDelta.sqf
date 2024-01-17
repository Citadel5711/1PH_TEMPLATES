//[] execVM "scripts\radioCodeDelta.sqf";

if (!isServer) exitWith {};

radioCodeDelta = true;
publicVariable "radioCodeDelta";

[west, "BLU"] sideChat "Attention all callsigns, a RADIO CODE DELTA emergency has been declared.  All available combat air assets re-route to the specified AO and report to the JSOC closest to the emergency.  Broadway out.";

sleep 1200;

[west, "BLU"] sideChat "Attention all callsigns, we have expended our available fuel for the RADIO CODE DELTA emergency.  All aircraft, begin evacuation from the AO.  Broadway out.";

sleep 120;

radioCodeDelta = false;
publicVariable "radioCodeDelta";

[west, "BLU"] sideChat "Attention all callsigns, the RADIO CODE DELTA has been released, resume normal air operations.  Broadway out.";