_buycar = _this addAction ["Buy a car",["B_MRAP_01_F"] call _fbuy];

_buyID = param[0];// The class name of the buyed object.
//List of Class name of buyable object. Example : https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
_object=["B_Heli_Light_01_F","B_MRAP_01_F"];
//Price of the object in the table upstaire. '_object select n' have a price of '_price select n'
_price=[20000,5000];

for "_i" from 0 to count _object do{
	IF(_buyID ==_object select _i)THEN{ // select the right object in the list above. Need optimisation ><'
		IF(govBank >= (_price select _i))THEN{
			(_object select _i) createVehicle position president;
			govBank = govBank - (_price select _i);
			hint format["Object buyed, %1 on your account now.",govBank];
		}ELSE{hint "You deosn't have enouth money. :c";};
	}ELSE{hint format["No can do: %1",_buyID];};	
};