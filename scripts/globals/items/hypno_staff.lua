-----------------------------------------
-- ID: 17117
-- Item: Hypno Staff
-- Additional Effect: Sleep
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player, target, damage)
    local chance = 15
    local resist = applyResistanceAddEffect(player,target,tpz.magic.ele.DARK,0)

    if (math.random(0,99) >= chance or resist < 0.5) then
        return 0,0,0
    else
        local duration = 25 * resist
        duration = math.ceil(duration * tryBuildResistance(tpz.magic.buildcat.SLEEP, target))
        if (target:getMainLvl() > player:getMainLvl()) then
            duration = duration - (target:getMainLvl() - player:getMainLvl())
        end
        duration = utils.clamp(duration, 1, 25)
        duration = duration * applyResistanceAddEffect(player, target, tpz.magic.ele.DARK, 0)
        if (not target:hasStatusEffect(tpz.effect.SLEEP_I)) then
            target:addStatusEffect(tpz.effect.SLEEP_I, 1, 0, duration)
        end
        return tpz.subEffect.SLEEP, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.SLEEP_I
    end
end
