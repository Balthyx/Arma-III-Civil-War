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
_this addItemToUniform "Chemlight_blue";
_this addItemToUniform "11Rnd_45ACP_Mag";
_this addVest "V_TacVest_blk_POLICE";
for "_i" from 1 to 2 do {_this addItemToVest "FirstAidKit";};
for "_i" from 1 to 3 do {_this addItemToVest "11Rnd_45ACP_Mag";};
for "_i" from 1 to 5 do {_this addItemToVest "30Rnd_9x21_Mag_SMG_02";};
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
_this addHeadgear "H_MilCap_blue";
_this addGoggles "G_Squares_Tinted";

comment "Add weapons";
_this addWeapon "SMG_02_F";
_this addWeapon "hgun_Pistol_heavy_01_F";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
