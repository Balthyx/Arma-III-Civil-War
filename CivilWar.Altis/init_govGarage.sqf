_object=["C_Van_01_box_F","B_MRAP_01_F","B_Heli_Light_01_F"]; //List of Class name of buyable object. Example : https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
_price=[40,470,3600]; //Price of the object in the table upstaire. '_object select n' have a price of '_price select n'

_fbuyVehicle = {
	if ((_this select 1) == president or president == null)THEN{
		private _price=(_this select 3) select 2;
		private _object=(_this select 3) select 1;
		private _buyID = (_this select 3) select 0;// The id of the buyed object.
			IF(govBank >= (_price select _buyID))THEN{
				(_object select _buyID) createVehicle position spawnGovStore,[],0;
				govBank = govBank - (_price select _buyID);
				hint format["Object buyed, %1 on your account now.",govBank];
			}ELSE{hint "You doesn't have enouth money. :c";};
	}ELSE{hint "Only President can do that.";};
};

//Auto-create an addAction for all _object
for "_i" from 0 to (count _object)-1 do{
	_p= format ["%1 k$",_price select _i];
	_sentence= "Buy " + (_object select _i) + " for " + _p;
	_this addAction [_sentence,_fbuyVehicle,[_i,_object,_price]];
};