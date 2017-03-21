sellTruck = {
	private _noIndustrie=(_this select 3) select 0;
	_object = (nearestObjects [(position (industries select _noIndustrie)), ["C_Van_01_box_F"], 5]) select 0;//object is the truck to sell
	
	if (typeof _object == "C_Van_01_box_F") THEN{
		private _i=0;
		private _roll=1;
		
		while{_roll==1}do{
			if(_i >= (count resource))THEN{
				deleteVehicle _object;
				_roll = 0; //stop the loop
				
			}ELSE{
				IF( nearestObjects [(position (resource select _i)), ["C_Van_01_box_F"],3] isEqualTypeArray [])THEN{//check if the area is empty
					_object setPos (position (resource select _i ));
					_object setDammage 0;
					_object setFuel 1;
					_roll = 0; //stop the loop
				};
			};
			_i = _i + 1;
		};
		
		hint format["Truck loaded, %1 000 $ earned.",TRUCK_REWARD];//TRUCK_REWARD defined in init.sqf
		
	}ELSE{hint "There is no truck in the area";};
};

ind1 addAction ["Sell",sellTruck,[0]];