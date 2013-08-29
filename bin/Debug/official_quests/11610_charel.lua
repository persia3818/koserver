local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 11610;
local savenum = -1;


if EVENT == 240 then
   SelectMsg(UID, 3, savenum, 4150, NPC, 4150, 100, 4151, 360, 4155, 370, 4156, 380, 4154, 241);
end

if EVENT == 241 then
	Ret = 1;
end

if EVENT == 100 then
	SelectMsg(UID, 3, savenum, 6421, NPC, 4333, 280, 4334, 110, 4335, 120, 4154, 241, 40140, 130, 40139, 140);
end

--## ACRICATED UPGRADE START 

if EVENT == 130 then

    GetClanGrade = CheckClanGrade(UID)
        if GetClanGrade == 1 then
		Check = isClanLeader(UID)
            if Check then
                SelectMsg(UID, 3, savenum, 6381, NPC, 40138, 40138, 40137, 40137, 40136, 40136, 40135, 40135);
           
        else
        SelectMsg(UID, 2, savenum, 6385, NPC, 10, 241);
        end
    else -- Tranýng G1 Deðilse
    SelectMsg(UID, 2, savenum, 6404, NPC, 10, 241);
    end
end

if EVENT == 40138 then
 GetClanRank = CheckKnight(UID)
    if GetClanRank == 3 then
		Check = isClanLeader(UID)
   
    GetClanPoint = CheckClanPoint(UID)
    if GetClanPoint < 180000 then
	SelectMsg(UID, 2, savenum, 10626, NPC, 10, 241);
	else       
    RobClanPoint (UID , 180000)
	PromoteKnight(UID,4)
	SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
	end
	end
	end
	
	if EVENT == 40137 then
 GetClanRank = CheckKnight(UID)
    if GetClanRank == 4 then
		Check = isClanLeader(UID)
   
    GetClanPoint = CheckClanPoint(UID)
    if GetClanPoint < 360000 then
	SelectMsg(UID, 2, savenum, 10627, NPC, 10, 241);
	else       
    RobClanPoint (UID , 360000)
	PromoteKnight(UID,5)
	SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
	end
	end
	end
	
	if EVENT == 40136 then
 GetClanRank = CheckKnight(UID)
    if GetClanRank == 5 then
		Check = isClanLeader(UID)
   
    GetClanPoint = CheckClanPoint(UID)
    if GetClanPoint < 540000 then
	SelectMsg(UID, 2, savenum, 10628, NPC, 10, 241);
	else       
    RobClanPoint (UID , 540000)
	PromoteKnight(UID,6)
	SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
	end
	end
	end
	
	if EVENT == 40135 then
 GetClanRank = CheckKnight(UID)
    if GetClanRank == 6 then
		Check = isClanLeader(UID)
   
    GetClanPoint = CheckClanPoint(UID)
    if GetClanPoint < 720000 then
	SelectMsg(UID, 2, savenum, 10629, NPC, 10, 241);
	else       
    RobClanPoint (UID , 720000)
	PromoteKnight(UID,7)
	SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
	end
	end
	end
	
--## ACRICATED UPGRADE END

--## ROYAL UPGRADE START

if EVENT == 140 then

    GetClanGrade = CheckClanGrade(UID)
        if GetClanGrade == 1 then
		Check = isClanLeader(UID)
            if Check then
                SelectMsg(UID, 3, savenum, 6381, NPC, 40141, 40141, 40142, 40142, 40143, 40143, 40144, 40144);
           
        else
        SelectMsg(UID, 2, savenum, 6385, NPC, 10, 241);
        end
    else -- Tranýng G1 Deðilse
    SelectMsg(UID, 2, savenum, 6404, NPC, 10, 241);
    end
end

if EVENT == 40141 then
 GetClanRank = CheckKnight(UID)
    if GetClanRank == 8 then
		Check = isClanLeader(UID)
   
    GetClanPoint = CheckClanPoint(UID)
    if GetClanPoint < 900000 then
	SelectMsg(UID, 2, savenum, 43607, NPC, 10, 241);
	else       
    RobClanPoint (UID , 900000)
	PromoteKnight(UID,9)
	SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
	end
	end
	end
	
	if EVENT == 40142 then
 GetClanRank = CheckKnight(UID)
    if GetClanRank == 9 then
		Check = isClanLeader(UID)
   
    GetClanPoint = CheckClanPoint(UID)
    if GetClanPoint < 1080000 then
	SelectMsg(UID, 2, savenum, 43608, NPC, 10, 241);
	else       
    RobClanPoint (UID , 1080000)
	PromoteKnight(UID,10)
	SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
	end
	end
	end
	
	if EVENT == 40143 then
 GetClanRank = CheckKnight(UID)
    if GetClanRank == 10 then
		Check = isClanLeader(UID)
   
    GetClanPoint = CheckClanPoint(UID)
    if GetClanPoint < 1260000 then
	SelectMsg(UID, 2, savenum, 43609, NPC, 10, 241);
	else       
    RobClanPoint (UID , 1260000)
	PromoteKnight(UID,11)
	SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
	end
	end
	end
	
	if EVENT == 40144 then
 GetClanRank = CheckKnight(UID)
    if GetClanRank == 11 then
		Check = isClanLeader(UID)
   
    GetClanPoint = CheckClanPoint(UID)
    if GetClanPoint < 1440000 then
	SelectMsg(UID, 2, savenum, 43610, NPC, 10, 241);
	else       
    RobClanPoint (UID , 1440000)
	PromoteKnight(UID,12)
	SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
	end
	end
	end


--## ROYAL UPGRADE END
	
	
	

--## ACRICATED START
if EVENT == 110 then
GetClanRank = CheckKnight(UID)
    if GetClanRank == 2 then
    GetClanGrade = CheckClanGrade(UID)
        if GetClanGrade == 1 then
		Check = isClanLeader(UID)
            if Check then
                SelectMsg(UID, 3, savenum, 6381, NPC, 4157, 111, 4158, 114, 4159, 115);
            else
            SelectMsg(UID, 2, savenum, 4164, NPC, 10, 241);
            end
        else
        SelectMsg(UID, 2, savenum, 6385, NPC, 10, 241);
        end
    else -- Tranýng G1 Deðilse
    SelectMsg(UID, 2, savenum, 6404, NPC, 10, 241);
    end
end

if EVENT == 111 then
    SelectMsg(UID, 2, savenum, 6387, NPC, 4160, 112, 27, 241);
end

if EVENT == 112 then
    SelectMsg(UID, 2, savenum, 6388, NPC, 4160, 113, 27, 241);
end

if EVENT == 113 then
    SelectMsg(UID, 2, savenum, 6389, NPC, 27, 241);
end

if EVENT == 114 then
    SelectMsg(UID, 2, savenum, 6390, NPC, 4161, 116, 4162, 241);
end

if EVENT == 115 then
	ZoneChangeClan(UID, 93, 63, 474)
end

if EVENT == 116 then
    ItemA = HowmuchItem(UID, 900000000);
    ItemB = HowmuchItem(UID, 389221000);
    if ItemA < 10000000 then
    SelectMsg(UID, 2, savenum, 6391, NPC, 10, 241);
    elseif ItemB == 0 then
    SelectMsg(UID, 2, savenum, 6392, NPC, 10, 241);
    else
	GoldLose(UID, 100000000)
	PromoteKnight(UID,3)
	SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241)
    end
end
--## ACRICATED END

--## ROYAL START
if EVENT == 120 then
GetClanRank = CheckKnight(UID)
    if GetClanRank == 7 then
	Check = isClanLeader(UID)
       if Check then -- Clan Lideri ise
          SelectMsg(UID, 3, savenum, 6394, NPC, 4157, 121, 4158, 124, 4159, 125);
       else -- Clan Baþkaný Deðilse
          SelectMsg(UID, 2, savenum, 4164, NPC, 10, 241);
       end
    else -- Accrýted 1 Deðilse
          SelectMsg(UID, 2, savenum, 6395, NPC, 10, 241);
    end
end

if EVENT == 121 then
    SelectMsg(UID, 2, savenum, 6396, NPC, 4160, 122, 27, 241);
end

if EVENT == 122 then
    SelectMsg(UID, 2, savenum, 6397, NPC, 4160, 123, 27, 241);
end

if EVENT == 123 then
    SelectMsg(UID, 2, savenum, 6398, NPC, 27, 241);
end

if EVENT == 124 then
    SelectMsg(UID, 2, 954, 6399, NPC, 4161, 126, 4162, 241);
end

if EVENT == 125 then
   ZoneChangeClan(UID, 94, 110, 20)
end

if EVENT == 126 then
    ItemA = HowmuchItem(UID, 900000000);
    ItemB = HowmuchItem(UID, 389222000); 
    if ItemA < 100000000 then
    SelectMsg(UID, 2, savenum, 6400, NPC, 10, 241);
    elseif ItemB == 0 then
    SelectMsg(UID, 2, savenum, 6401, NPC, 10, 241);
    else
	RobItem(UID, 389222000, 1)
	GoldLose(UID, 100000000)
    PromoteKnight(UID,8)
	SelectMsg(UID, 2, savenum, 6402, NPC, 10, 241)
    end
end
--## ROYAL END

--## TRANING KNIGHT START
if EVENT == 280 then
GetClanRank = CheckKnight(UID)
    if GetClanRank == 1 then -- Clan Flag 1 ise 
    GetClanGrade = CheckClanGrade(UID)
        if GetClanGrade < 4 then -- Clan Grade 3 ve yukarýsý ise
		Check = isClanLeader(UID)
           if Check then -- Clan Baþkaný ise
               SelectMsg(UID, 3, savenum, 4165, NPC, 4157, 281, 4158, 286, 4159, 285);
           else-- Clan Baþkaný deðilse mesaj göster
               SelectMsg(UID, 2, savenum, 4164, NPC, 10, 241);
           end
        else-- Clan Grade 4 veya 5 ise 
        SelectMsg(UID, 2, savenum, 4163, NPC, 10, 241);
        end
    else-- Tranýng Clan Deðilse
    SelectMsg(UID, 2, savenum, 6403, NPC, 10, 241);
    end
end

if EVENT == 281 then
    SelectMsg(UID, 2, savenum, 4166, NPC, 4160, 282, 27, 241);
end

if EVENT == 282 then
    SelectMsg(UID, 2, savenum, 4167, NPC, 4160, 283, 27, 241);
end

if EVENT == 283 then
    SelectMsg(UID, 2, savenum, 4168, NPC, 27, 241);
end

if EVENT == 285 then
ZoneChangeClan(UID, 54, 150, 150, 50)
end




	


local ItemA
local ItemB

if EVENT == 286 then
    SelectMsg(UID, 4, 415, 4172, NPC, 4161, 287, 4162, 241);
end


if EVENT == 287 then
    ItemA = HowmuchItem(UID, 900000000);
    ItemB = HowmuchItem(UID, 910045000);
    if ItemA < 10000000 then -- ³ë¾Æ
    SelectMsg(UID, 2, savenum, 4170, NPC, 10, 241);
    elseif ItemB == 0 then
    SelectMsg(UID, 2, savenum, 4171, NPC, 10, 241);
    else
	GoldLose(UID, 10000000)
	RobItem(UID , 910045000, 1)
    PromoteKnight(UID,2)
    end
end



local Loyalty

if EVENT == 360 then
Loyalty = CheckLoyalty(UID)
	  if  Loyalty > 100  then
	   SelectMsg(UID, 2, savenum, 4155, NPC, 10, 241);
	  else
      SelectMsg(UID, 3, savenum, 4156, NPC, 4152, 361, 4153, 363, 4154, 241);
	  end
end

if EVENT == 361 then 
ITEM_COUNT = HowmuchItem(UID, 900000000);
    if ITEM_COUNT < 1500000 then
    SelectMsg(UID, 2, savenum, 4160, NPC, 10, 241);
	else
    SelectMsg(UID, 4, 413, 4157, NPC, 22, 362, 23, 241);
    end
end


if EVENT == 362 then 
    GoldLose(UID, 1500000)
	GiveLoyalty(UID, 500)
 end

if EVENT == 363 then
ITEM_COUNT = HowmuchItem(UID, 900000000);
    if ITEM_COUNT < 350000 then
    SelectMsg(UID, 2, savenum, 4161, NPC, 10, 241);
	else
    SelectMsg(UID, 4, 414, 4159, NPC, 22, 364, 23, 241);
    end
end

if EVENT == 364 then 
    GoldLose(UID, 350000)
	GiveLoyalty(UID, 100)
 end

local Reward

if EVENT == 370 then
Reward = RequestPersonalRankReward(UID)
    if  Reward == 0 then
    SelectMsg(UID, 2, savenum, 4153, NPC, 10, 241);
    elseif Reward == 2 then
    SelectMsg(UID, 2, savenum, 4154, NPC, 10, 241);
    else
    Ret = 1;
    end
end

local Reward

if EVENT == 380 then
Reward = RequestReward(UID)
    if  Reward == 0 then
    SelectMsg(UID, 2, savenum, 4151, NPC, 10, 241);
    elseif Reward == 2 then
    SelectMsg(UID, 2, savenum, 4152, NPC, 10, 241);
    else
    Ret = 1; 
    end
end

return Ret;
