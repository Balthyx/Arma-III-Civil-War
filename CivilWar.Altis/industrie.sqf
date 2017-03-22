_sellTruck = {
	private _noIndustrie = 0;
	for "_i" from 0 to (count industries) do{
		if ( (inds select _i)==(_this select 0))then{
			_noIndustrie = _i;
		};
	};
	
	private _object = (nearestObjects [(position (industries select _noIndustrie)), ["C_Van_01_box_F"], 5]) select 0;//object is the truck to sell
	if not(isNil "_object") THEN{
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
			
			private _player = (_this select 1); //The one who trigger the addaction
			
			if( side _player == civilian)THEN{
				_player setVariable ["cash",(_player getVariable ["cash",0]) + TRUCK_REWARD];
			};
			if( side _player == opfor)THEN{
				rebelBank = rebelBank + TRUCK_REWARD;
			};
			if((indSide select _noIndustrie)=="WEST")THEN{
				govBank = govBank + MULTI_TRUCK_GOV * TRUCK_REWARD;
			}ELSE{
				rebelBank = rebelBank + MULTI_TRUCK_REBEL * TRUCK_REWARD;
			};
			//hint format["Truck loaded, %1 000 $ earned.",TRUCK_REWARD];//TRUCK_REWARD defined in init.sqf
			
		};
	}ELSE{hint "There is no truck in the area";};
};

_this addAction ["Sell",_sellTruck,[0]];