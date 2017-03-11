//List of civile clothes
_clothes=["U_C_Journalist","U_C_Poloshirt_burgundy","U_C_Poloshirt_tricolour","U_C_Poloshirt_redwhite","U_C_Poor_2","U_C_HunterBody_grn","U_C_Commoner_shorts","U_C_ShirtSurfer_shorts","U_NikosAgedBody","U_C_Poloshirt_blue","U_C_Poloshirt_salmon"];
_choosenclothe=_clothes select (random (round (count _clothes) -1));
_this forceAddUniform _choosenclothe;