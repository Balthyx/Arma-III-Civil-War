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
_this forceAddUniform "U_BG_Guerrilla_6_1";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "30Rnd_65x39_caseless_green";
_this addVest "V_TacVest_brn";
for "_i" from 1 to 2 do {_this addItemToVest "FirstAidKit";};
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_this addItemToVest "30Rnd_65x39_caseless_green";};
_this addBackpack "B_Kitbag_cbr";
for "_i" from 1 to 2 do {_this addItemToBackpack "FirstAidKit";};
for "_i" from 1 to 2 do {_this addItemToBackpack "HandGrenade";};
for "_i" from 1 to 2 do {_this addItemToBackpack "SmokeShell";};
_this addHeadgear "H_HelmetB_sand";

comment "Add weapons";
_this addWeapon "arifle_Katiba_C_F";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";