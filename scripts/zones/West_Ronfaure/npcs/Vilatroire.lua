-----------------------------------
-- Area: West Ronfaure
-- NPC: Vilatroire
-- Involved in Quests: "Introduction To Teamwork", "Intermediate Teamwork",
-- "Advanced Teamwork"
-- !pos -260.361 -70.999 423.420 100
-----------------------------------
require("scripts/globals/quests")
require("scripts/globals/titles")
require("scripts/globals/status")
require("scripts/globals/npc_util")
require("scripts/zones/West_Ronfaure/IDs")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    local sandyFame = player:getFameLevel(SANDORIA)

    local questIntroToTeamwork = player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.INTRODUCTION_TO_TEAMWORK)
    local questIntermediateTeamwork = player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.INTERMEDIATE_TEAMWORK)
    local questAdvancedTeamwork = player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.ADVANCED_TEAMWORK)

    if questIntroToTeamwork == QUEST_AVAILABLE and sandyFame >= 2 then
         player:startEvent(135) -- All 6 members present in alliance.
    elseif questIntroToTeamwork == QUEST_AVAILABLE and sandyFame < 2 then
        player:startEvent(134) -- You don't meet the requirements to start.
    elseif questIntroToTeamwork == QUEST_ACCEPTED then
        player:startEvent(129, 0, 1) -- Is everyone ready?
    elseif questIntroToTeamwork == QUEST_COMPLETED and questIntermediateTeamwork == QUEST_AVAILABLE and sandyFame >= 3 and player:getMainLvl() >= 10 then
        player:startEvent(133) -- All are same race.
    elseif questIntroToTeamwork == QUEST_COMPLETED and questIntermediateTeamwork == QUEST_AVAILABLE and sandyFame < 3 and player:getMainLvl() < 10 then
        player:startEvent(132) -- Checks requirements to start second quest.
    elseif questIntermediateTeamwork == QUEST_ACCEPTED then
        player:startEvent(129, 0, 2) -- Is everyone ready #2?
    elseif questIntermediateTeamwork == QUEST_COMPLETED and questAdvancedTeamwork == QUEST_AVAILABLE and sandyFame >= 4 and player:getMainLvl() >= 10 then
        player:startEvent(131) -- All players are same job.
    elseif questIntermediateTeamwork == QUEST_COMPLETED and questAdvancedTeamwork == QUEST_AVAILABLE and sandyFame < 4 and player:getMainLvl() < 10 then
        player:startEvent(130) -- Dialogue for the rest of the quest line.
    elseif questAdvancedTeamwork == QUEST_ACCEPTED then
        player:startEvent(129, 0, 3) -- Is everyone ready #2?
    elseif questAdvancedTeamwork == QUEST_COMPLETED then
        player:startEvent(130) -- Dialogue for the rest of the quest line.
    else
        player:startEvent(136)
    end
end

function onEventUpdate(player, csid, option)
    -- 129 is apparently the same for each quest start...
    if csid == 129 then
        local questIntroToTeamwork = player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.INTRODUCTION_TO_TEAMWORK)
        local questIntermediateTeamwork = player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.INTERMEDIATE_TEAMWORK)
        local questAdvancedTeamwork = player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.ADVANCED_TEAMWORK)
        local partySizeRequirement = 6
        local party = player:getParty()
        local pRace = player:getRace()
        local partySameNationCount = 0
        local partySameRaceCount = 0
        local partySameJobCount = 0

        if #party >= partySizeRequirement then

            for key, member in pairs(party) do
            	local mRace = member:getRace()

                if member:getZoneID() ~= player:getZoneID() or member:checkDistance(player) > 15 then
                    player:updateEvent(1) -- One or more members too far away or not in zone.
                    return
                else
                    if member:getNation() == player:getNation() then
                        partySameNationCount = partySameNationCount + 1
                    end

                    if     (pRace == tpz.race.HUME_M or pRace == tpz.race.HUME_F) and (mRace == tpz.race.HUME_M or mRace == tpz.race.HUME_F) then
                              partySameRaceCount = partySameRaceCount + 1
                    elseif (pRace == tpz.race.ELVAAN_M or pRace == tpz.race.ELVAAN_F) and (mRace == tpz.race.ELVAAN_M or mRace == tpz.race.ELVAAN_F) then
                              partySameRaceCount = partySameRaceCount + 1
                    elseif (pRace == tpz.race.TARU_M or pRace == tpz.race.TARU_F) and (mRace == tpz.race.TARU_M or mRace == tpz.race.TARU_F) then
                              partySameRaceCount = partySameRaceCount + 1
                    elseif pRace == tpz.race.GALKA and mRace == tpz.race.GALKA then 
                              partySameRaceCount = partySameRaceCount + 1
                    elseif pRace == tpz.race.MITHRA and mRace == tpz.race.MITHRA then
                              partySameRaceCount = partySameRaceCount + 1
                    end

                    if member:getMainJob() == player:getMainJob() then
                        partySameJobCount = partySameJobCount + 1
                    end
                end
            end

            if questIntroToTeamwork == QUEST_ACCEPTED then
                if (partySameNationCount == partySizeRequirement) then
                    player:setLocalVar("IntroTeamwork", 1) -- Everyone is the same nation. (Success.)
                    player:updateEvent(15, 1)
                else
                    player:updateEvent(3) -- Everyone isn't the same nation. (Fail.)
                end
            elseif questIntermediateTeamwork == QUEST_ACCEPTED then
                if (partySameRaceCount == partySizeRequirement) then
                    player:setLocalVar("InterTeamwork", 1)
                    player:updateEvent(15, 2) -- Everyone is the same race. (Success.)
                else
                    player:updateEvent(4) -- Everyone isn't the same race. (Fail.)
                end
            elseif questAdvancedTeamwork == QUEST_ACCEPTED then
                if partySameJobCount == partySizeRequirement then
                    player:setLocalVar("AdvTeamwork", 1)
                    player:updateEvent(15, 3) -- Everyone is the same job. (Success.)
                else
                    player:updateEvent(5) -- Everyone is not the same job. (Fail.)
                end
            end
        else
            player:updateEvent(1) -- Not enough party members. (Fail.)
        end
    end
end

function onEventFinish(player, csid, option)
		if csid == 129 and option == 0 then
        local questIntroToTeamwork = player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.INTRODUCTION_TO_TEAMWORK);
        local questIntermediateTeamwork = player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.INTERMEDIATE_TEAMWORK);
        local questAdvancedTeamwork = player:getQuestStatus(SANDORIA, tpz.quest.id.sandoria.ADVANCED_TEAMWORK);

        if questIntroToTeamwork == QUEST_ACCEPTED and player:getLocalVar("IntroTeamwork") == 1 then
            npcUtil.completeQuest(player, SANDORIA, tpz.quest.id.sandoria.INTRODUCTION_TO_TEAMWORK, {
                item = 13442, -- Shell Ring
                title = tpz.title.THIRDRATE_ORGANIZER,
            })
        elseif questIntermediateTeamwork == QUEST_ACCEPTED and player:getLocalVar("InterTeamwork") == 1 then
            npcUtil.completeQuest(player, SANDORIA, tpz.quest.id.sandoria.INTERMEDIATE_TEAMWORK, {
                item = 4994, -- Scroll of Mage's Ballad
                title = tpz.title.SECONDRATE_ORGANIZER,
            })
        elseif questAdvancedTeamwork == QUEST_ACCEPTED and player:getLocalVar("AdvTeamwork") == 1 then
            npcUtil.completeQuest(player, SANDORIA, tpz.quest.id.sandoria.ADVANCED_TEAMWORK, {
                item = 13459, -- Horn Ring
                title = tpz.title.FIRSTRATE_ORGANIZER,
            })
        end
    elseif csid == 131 and option == 1 then
        player:addQuest(SANDORIA, tpz.quest.id.sandoria.ADVANCED_TEAMWORK)
    elseif csid == 133 and option == 1 then
        player:addQuest(SANDORIA, tpz.quest.id.sandoria.INTERMEDIATE_TEAMWORK)
    elseif csid == 135 and option == 1 then
        player:addQuest(SANDORIA, tpz.quest.id.sandoria.INTRODUCTION_TO_TEAMWORK)
    end
end
