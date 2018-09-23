//This file is called in mission init, because I don't like the ingame editor

nul = execVM "init_cache.sqf";
//Bank, money is in $$
govBank=2000000; //Start money for the government side
rebelBank=0;	//Start money for the rebel side
//Each civilian init his personal account in 'init_civil.sqf' (not implemented now)

TRUCK_REWARD = 2; //reward in k$ for driving a truck in industri area
MULTI_TRUCK_REBEL = 10; //Reward multiplier for rebels
MULTI_TRUCK_GOV = 10; //Reward multiplier for gov

resource=[resource_1,resource_2,resource_3,resource_4,resource_5,resource_6,resource_7,resource_8,resource_9];
industries=[Mindustrie_1,Mindustrie_2,Mindustrie_3];
inds=[ind_1,ind_2,ind_3];

indSide1="WEST";
indSide2="WEST";//Side of each industries
indSide3="EAST";
indSide=[indSide1,indSide2,indSide3];