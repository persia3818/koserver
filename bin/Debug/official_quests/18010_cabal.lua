local UserClass;
local QuestNum;
local Ret = 0;
local NPC= 18010;
local savenum = -1;

if EVENT == 100 then
SelectMsg(UID, 2, savenum, 4072, NPC, 4071, 102, 4072, 101);
end

if EVENT == 101 then
Ret = 1;
end

if EVENT == 102 then
ZoneChange(UID, 1, 443, 441)
end