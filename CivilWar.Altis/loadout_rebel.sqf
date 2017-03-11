//List of civile face, rebels are opfor, opfor have reconiseable face :c
_face=["GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_06","GreekHead_A3_04","GreekHead_A3_03","GreekHead_A3_05"];
_choosenface =_face select (random (round (count _face)-1));
_this setFace _choosenface;



// comment "Exported from Arsenal by Balthyx";

// comment "Remove existing items";
// removeAllWeapons this;
// removeAllItems this;
// removeAllAssignedItems this;
// removeUniform this;
// removeVest this;
// removeBackpack this;
// removeHeadgear this;
// removeGoggles this;

// comment "Add containers";
// this forceAddUniform "U_C_Poloshirt_salmon";
// this addHeadgear "H_Cap_oli";
// this addGoggles "G_Sport_Checkered";

// comment "Add weapons";

// comment "Add items";
// this linkItem "ItemMap";
// this linkItem "ItemCompass";
// this linkItem "ItemWatch";

// comment "Set identity";
// this setFace "GreekHead_A3_05";
// this setSpeaker "Male03GRE";
