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
_this addHeadgear "H_MilCap_mcamo";

comment "Add weapons";
_this addWeapon "arifle_Katiba_F";
_this addPrimaryWeaponItem "optic_Hamr";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";

 