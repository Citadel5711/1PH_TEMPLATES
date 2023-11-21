// [player, 300] execVM "scripts\playerTracker.sqf";

_player = (_this select 0);
_trackRadius = (_this select 1);

_nearestunits = nearestObjects [getPosATL _player,["Man","Car","Tank"], _trackRadius];
_nearestOPFORList = _nearestUnits select {side _x == EAST};
if (count _nearestOPFORList == 0 OR (random 100 <= 25)) exitWith {hint "No signs observed."};
_nearestOPFOR = (_nearestOPFORList select 0);

_targetDir = _player getRelDir _nearestOPFOR;
_reportDir = str text "Unknown";

if (_targetDir > 340 OR _targetDir < 20) then {_reportDir = str text "to the front";};
if (_targetDir >= 20 AND _targetDir <= 90) then {_reportDir = str text "ahead to the right";};
if (_targetDir >= 90 AND _targetDir <= 180) then {_reportDir = str text "behind to the right";};
if (_targetDir >= 180 AND _targetDir <= 270) then {_reportDir = str text "behind to the left";};
if (_targetDir >= 270 AND _targetDir <= 340) then {_reportDir = str text "ahead to the left";};

_targetDist = _player distance2D _nearestOPFOR;

if (_targetDist < (_trackRadius * 0.3)) exitWith {hint format ["Signs suggests OPFOR %1, close.", _reportDir];};
if (_targetDist < (_trackRadius * 1.0)) exitWith {hint format ["Signs suggests OPFOR %1, contact distance.", _reportDir];};
if (_targetDist < (_trackRadius * 2.0)) exitWith {hint format ["Signs suggests OPFOR %1, far.", _reportDir];};
if (_targetDist < (_trackRadius * 3.0)) exitWith {hint format ["Signs suggests OPFOR %1, very far.", _reportDir];};