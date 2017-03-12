//List of civile face, rebels are opfor, opfor have reconiseable face :c
_face=["GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_06","GreekHead_A3_04","GreekHead_A3_03","GreekHead_A3_05"];

_percentOfArmedRebels=20;

_choosenface =_face select (random (round (count _face)-1));
_this setFace _choosenface;

_choosenWeapon = random 100;
IF (_choosenWeapon < _percentOfArmedRebels)THEN{
	_this addBackpack "B_AssaultPack_cbr";
	_this addItemToBackpack "hgun_P07_F";
	_this addItemToBackpack "16Rnd_9x21_Mag";
};
