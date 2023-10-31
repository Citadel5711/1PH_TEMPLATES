if (!isServer) exitWith {};
_droppedItem_00 = (_this select 0);
waitUntil {sleep 0.5; count attachedObjects (attachedTo _droppedItem_00) == 0;};
_unsorted = nearestObjects [_droppedItem_00, ["Tarp_01_Large_Black_F", "Tarp_01_Large_Green_F", "Tarp_01_Large_Red_F", "Tarp_01_Large_Yellow_F"], 200];
if (count _unsorted == 0) exitWith {};
_closestTarpItem = _unsorted select 0;
detach _droppedItem_00;
_droppedItem_00 setVehiclePosition [(_closestTarpItem modelToWorld[0,0,0.5]), [],0.5, "NONE"];
deleteVehicle _closestTarpItem;
