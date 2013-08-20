IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'UPDATE_KNIGHTS_RATING') AND type in (N'P', N'PC'))
    DROP PROCEDURE UPDATE_KNIGHTS_RATING;
GO

CREATE PROCEDURE UPDATE_KNIGHTS_RATING
AS
/*
Author : AKUMA
Update : 16.10.2009 - 20:51
*/
DECLARE @RankingMAX tinyint 
DECLARE @SuspendedPlayersIncluded tinyint
SET @RankingMAX = 5 -- MAX 255
SET @SuspendedPlayersIncluded = 0 -- 0 = Cezasız Oyuncular / 1 = Cezasız ve Cezalı Oyuncular (Game Master'lar Her İki Koşulda da Dahil Edilmez.)
 
-- KNIGHTS_RATING Tablosunu Boşaltıyoruz...
TRUNCATE TABLE KNIGHTS_RATING
-- KNIGHTS Tablosunu Güncelliyoruz...
IF @SuspendedPlayersIncluded = 0
    UPDATE KNIGHTS SET Points = (SELECT SUM(Loyalty) FROM USERDATA WHERE Authority = 1 AND Knights = IDNum)
ELSE
    UPDATE KNIGHTS SET Points = (SELECT SUM(Loyalty) FROM USERDATA WHERE Authority <> 0 AND Knights = IDNum)

-- KNIGHTS_RATING'i Dolduruyoruz...
INSERT INTO KNIGHTS_RATING SELECT ROW_NUMBER() OVER (ORDER BY ClanPointFund DESC), IDNum, IDName, ClanPointFund FROM KNIGHTS ORDER BY ClanPointFund DESC

-- KNIGHTS Rankingi Ayarlıyoruz
UPDATE KNIGHTS SET Ranking = 0
UPDATE KNIGHTS SET Ranking = (SELECT nRank FROM KNIGHTS_RATING WHERE shIndex = IDNum AND nRank <= @RankingMAX) WHERE (SELECT nRank FROM KNIGHTS_RATING WHERE shIndex = IDNum AND nRank <= @RankingMAX) <= @RankingMAX