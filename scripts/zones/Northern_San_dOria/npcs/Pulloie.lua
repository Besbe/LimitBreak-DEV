-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Pulloie
-- Quest NPC
-----------------------------------

require("scripts/globals/room_rental")

function onTrade(player, npc, trade)

end

function onTrigger(player, npc)
    if (player:getNation() == 0) then
    player:startEvent(595)
else
    player:startEvent(598)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    tryMoveToLeaderMH(player)
end
