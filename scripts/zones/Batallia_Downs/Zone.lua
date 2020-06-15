-----------------------------------
--
-- Zone: Batallia_Downs (105)
--
-----------------------------------
local ID = require("scripts/zones/Batallia_Downs/IDs")
require("scripts/globals/icanheararainbow");
require("scripts/globals/chocobo_digging");
require("scripts/globals/full_speed_ahead")
require("scripts/globals/missions");
require("scripts/globals/zone");
-----------------------------------

function onChocoboDig(player, precheck)
    return tpz.chocoboDig.start(player, precheck)
end;

local function registerRegionAroundNPC(zone, NPCID, zoneID)
    local npc = GetNPCByID(NPCID)
    local x = npc:getXPos()
    local y = npc:getYPos()
    local z = npc:getZPos()
    local distance = 7
    zone:registerRegion(zoneID, 
        x - distance, y - distance, z - distance,
        x + distance, y + distance, z + distance)
end

function onInitialize(zone)
    UpdateNMSpawnPoint(ID.mob.AHTU);
    GetMobByID(ID.mob.AHTU):setRespawnTime(math.random(900, 10800));

    for i = 0, 7 do
        registerRegionAroundNPC(zone, ID.npc.RAPTOR_FOOD_BASE + i, i + 1)
    end
    registerRegionAroundNPC(zone, ID.npc.SYRILLIA, 8)
end

function onZoneIn( player, prevZone)
    local cs = -1;

    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos( -693.609, -14.583, 173.59, 30);
    end

    if (triggerLightCutscene(player)) then -- Quest: I Can Hear A Rainbow
        cs = 901;
    elseif (player:getCurrentMission(WINDURST) == tpz.mission.id.windurst.VAIN and player:getCharVar("MissionStatus") == 1) then
        cs = 903;
    end

    if player:getCharVar("[QUEST]FullSpeedAhead") == 1 then
        player:addStatusEffect(tpz.effect.FULL_SPEED_AHEAD, 0, 2, tpz.fsa.duration)
    end

    return cs;
end;

function onConquestUpdate(zone, updatetype)
    tpz.conq.onConquestUpdate(zone, updatetype)
end

function onRegionEnter(player, region)
    if player:hasStatusEffect(tpz.effect.FULL_SPEED_AHEAD) then
        tpz.fsa.onRegionEnter(player, region:GetRegionID())
    end
end;

function onEventUpdate(player, csid, option)
    if (csid == 901) then
        lightCutsceneUpdate(player); -- Quest: I Can Hear A Rainbow
    end
end;

function onEventFinish(player, csid, option)
    if (csid == 901) then
        lightCutsceneFinish(player); -- Quest: I Can Hear A Rainbow
    elseif (csid == 903) then
        if (player:getZPos() >  -331) then
            player:updateEvent(0,0,0,0,0,3);
        else
            player:updateEvent(0,0,0,0,0,2);
        end
    elseif csid == 24 then
        tpz.fsa.completeGame(player)
    end
end;
