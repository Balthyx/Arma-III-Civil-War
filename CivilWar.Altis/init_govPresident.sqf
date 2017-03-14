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
_this addItemToUniform "11Rnd_45ACP_Mag";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";



