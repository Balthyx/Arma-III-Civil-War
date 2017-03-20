_shellTruck = {
	private _noIndustrie=(_this select 3) select 0;
	_object = nearestObjects [(position (industries select _noIndustrie)), ["C_Van_01_box_F"], 5];
	if (typeof (_object select 0) == "C_Van_01_box_F") THEN{
		private _i=0;
		while{typeof((nearestObjects [(position (resource select _i)), ["C_Van_01_box_F"],3]) select 0) == "C_Van_01_box_F"} do{
			_i=_i+1;
			if ((_i -1)> count resource) THEN{
				deleteVehicle _object; //need more tests
			};
		};
		if ((_i -1) <= count resource) THEN{
			(_object select 0) setPos (position (resource select _i));
		};
		
		hint format["Truck loaded, %1 000 $ earned.",TRUCK_REWARD];//TRUCK_REWARD defined in init.sqf
	}ELSE{hint "There is no truck in the area";};
};

ind1 addAction ["Sell",_shellTruck,[0]];