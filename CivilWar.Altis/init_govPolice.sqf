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
_this forceAddUniform "U_BG_Guerilla2_1";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "11Rnd_45ACP_Mag";
_this addVest "V_Rangemaster_belt";
for "_i" from 1 to 2 do {_this addItemToVest "FirstAidKit";};
for "_i" from 1 to 3 do {_this addItemToVest "11Rnd_45ACP_Mag";};
_this addHeadgear "H_Cap_police";

comment "Add weapons";
_this addWeapon "hgun_Pistol_heavy_01_F";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";