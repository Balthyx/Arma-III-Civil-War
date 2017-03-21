//All pack are fill up here, is an array with : [quantity(int),ItemID(string),...]
_securityPack=[6,"SMG_02_F",12,"30Rnd_9x21_Mag_SMG_02",1,"V_Press_F"];
_milicePack=[6,"arifle_Katiba_C_F",12,"30Rnd_65x39_caseless_green_mag_Tracer"];
_militaryPack=[4,"arifle_Katiba_ACO_F",1,"arifle_Katiba_GL_ACO_F",1,"arifle_Katiba_ARCO_F",12,"30Rnd_65x39_caseless_green",3,"1Rnd_HE_Grenade_shell",6,"HandGrenade",6,"SmokeShell"];
_ammo=[18,"30Rnd_9x21_Mag_SMG_02",18,"30Rnd_65x39_caseless_green",9,"1Rnd_HE_Grenade_shell",3,"1Rnd_Smoke_Grenade_shell",12,"HandGrenade",12,"SmokeShell"];
_policeProtection=[6,"V_TacVest_blk_POLICE"];


_name=["Security Pack","Milice Pack","Military Pack","Ammo","Police protection"];//Name that be display in the addAction menu
_objets=[_securityPack,_milicePack,_militaryPack,_ammo,_policeProtection];//Array for the auto-addAction at the end of this doc
_price=[5,20,50,5,10];//Price for each pack

_fbuyItem = {
	if ((_this select 1) == president)THEN{
		private _price = (_this select 3) select 2;
		private _objets = (_this select 3) select 1;
		private _buyID = (_this select 3) select 0;// The n° of the buyed pack. In the order of _objet
		private _pack = _objets select _buyID;
			IF(govBank >= (_price select _buyID))THEN{//Have we enouth money ? $-$
				govBank = govBank - (_price select _buyID);
				hint format["Object buyed, %1 on your account now.",govBank];
				for "_i" from 1 to (count _pack) step 2 do{
					govStore addItemCargoGlobal[_pack select _i,_pack select (_i - 1)];//fill the ammoBox with all buyed items
				};
			}ELSE{hint "You doesn't have enouth money. :c";};//"oh no..."
	}ELSE{hint "Only President can do that.";};
};

//Auto-create an addAction for all _objets
for "_i" from 0 to (count _objets)-1 do{
	_p= format ["%1 k$",_price select _i];
	_sentence= "Buy " + (_name select _i) + " for " + _p;
	_this addAction [_sentence,_fbuyItem,[_i,_objets,_price]];
};
