comment "Exported from Arsenal by Balthyx";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

comment "Add containers";
_this forceAddUniform "U_Marshal";
_this addItemToUniform "FirstAidKit";
_this addHeadgear "H_Beret_Colonel";
_this addGoggles "G_Aviator";

comment "Add weapons";
_this addWeapon "hgun_Pistol_heavy_01_F";
_this addWeapon "Binocular";

comment "Add items";
_this addItemToUniform "11Rnd_45ACP_Mag";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";



_fbuy = {
	private _buyID = param[0];// The class name of the buyed object.
	private "_object";
	_object=["B_Heli_Light_01_F","B_MRAP_01_F"]; //List of Class name of buyable object. Example : https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
	private "_price";
	_price=[20000,5000]; //Price of the object in the table upstaire. '_object select n' have a price of '_price select n'
	for "_i" from 0 to count _object do{
		IF(_buyID ==_object select _i)THEN{ // select the right object in the list above. Need optimisation ><'
			IF(govBank >= (_price select _i))THEN{
				(_object select _i) createVehicle position president;
				govBank = govBank - (_price select _i);
				hint format["Object buyed, %1 on your account now.",govBank];
			}ELSE{hint "You deosn't have enouth money. :c";};
		}ELSE{hint format["No can do: %1",_buyID];};
		
		
	};
};


//test
_buycar = _this addAction ["Buy a car",["B_MRAP_01_F"] call _fbuy];
