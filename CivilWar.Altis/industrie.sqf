_resources[]
_industries[]

_shellTruck = {
	_object = nearestObjects [(position industrie_1), ["C_Van_01_box_F"], 5];
	if (typeof (_object select 0) == "C_Van_01_box_F") THEN{
		(_object select 0) setPos (position RTruck1);
		hint format["Truck loaded, %1 000 $ earned.",TRUCK_REWARD];//TRUCK_REWARD defined in init.sqf
	}ELSE{hint "There is no truck in the area";};
};



_this addAction ["Sell",_shellTruck];