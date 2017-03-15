_shellTruck = {
	_object = (nearestObject (position Mindustrie1));
	if (typeof _object == "C_Van_01_box_F") THEN{
		deleteVehicle _object;
		hint "Done.";
	};
};

_this addAction ["Sell",_shellTruck];