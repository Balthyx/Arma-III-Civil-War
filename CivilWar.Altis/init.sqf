//This file is called in mission init, because I don't like the ingame editor

nul = execVM "init_cache.sqf";
//Bank, money is in $$
govBank=25000; //Start money for the government side
rebelBank=0;	//Start money for the rebel side
//Each civilian init his personal account in 'init_civil.sqf' (not implemented now)

TRUCK_REWARD = 2; //reward in k$ for driving a truck in industri area

resource=[resource_1,resource_2,resource_3,resource_4,resource_5,resource_6,resource_7,resource_8,resource_9];
industries=[Mindustrie_1,Mindustrie_2,Mindustrie_3];
inds=[ind_1,ind_2,ind_3];

{"C_Van_01_box_F" createVehicle position _x,[],0;} forEach resource;