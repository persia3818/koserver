-- 도다 캠프 게이트
-- 그냥 닫기 168

-- EVENT 는 100번 이상 부터 사용

-- UID : 서버에서 제공하는 유저번호
-- EVENT : 서버에서 제공하는 퀘스트 번호
-- STEP : 서버에서 제공하는 퀘스트 내부 단계

-- 위의 세가지 파라메타는 루아 실행시 항상 전역변수로 제공�

-- 지역변수 선언...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 31508;


-- 도다 캠프 게이트 클릭시 퀘스트 체크  

if EVENT == 100 then
	SelectMsg(UID, 3, -1, 242, NPC, 7091, 7099, 7092, 7100, 7093, 7101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 7099 then -- 그냥 닫기 
	SelectMsg(UID, 3, -1, 242, NPC, 7099, 666, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 7100 then -- 그냥 닫기 
	SelectMsg(UID, 3, -1, 242, NPC, 7099, 667, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 7101 then -- 그냥 닫기 
	SelectMsg(UID, 3, -1, 242, NPC, 7099, 668, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 666 then
	CastSkill(UID,302327)
	GoldLose(5000)
	NpcMsg(9137)

end

if EVENT == 667 then

	CastSkill(UID,302331)
	GoldLose(50000)
	NpcMsg(9137)

end

if EVENT == 668 then
	CastSkill(UID,302328)
	GoldLose(50000)
	NpcMsg(9137)

end