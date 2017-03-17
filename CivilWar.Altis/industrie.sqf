shellTruck = {
	private _noIndustrie=(_this select 3) select 0;
	_object = nearestObjects [(position (industries select _noIndustrie)), ["C_Van_01_box_F"], 5];
	if (typeof (_object select 0) == "C_Van_01_box_F") THEN{
		
		hint format["Truck loaded, %1 000 $ earned.",TRUCK_REWARD];//TRUCK_REWARD defined in init.sqf
	}ELSE{hint "There is no truck in the area";};
};

_spawnRes = {
	private _Id=(_this select 3) select 0;
	(_object select 0) setPos (position RTruck1);
};


//_this addAction ["Sell",_shellTruck,[0]];