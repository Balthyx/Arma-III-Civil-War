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
_this forceAddUniform "U_I_G_Story_Protagonist_F";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "9Rnd_45ACP_Mag";
_this addVest "V_TacVest_blk";
for "_i" from 1 to 3 do {_this addItemToVest "30Rnd_9x21_Mag_SMG_02";};
_this addItemToVest "9Rnd_45ACP_Mag";
_this addHeadgear "H_Beret_02";

comment "Add weapons";
_this addWeapon "SMG_02_F";
_this addWeapon "hgun_ACPC2_F";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";