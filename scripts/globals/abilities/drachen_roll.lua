-----------------------------------
-- Ability: Drachen Roll
-- Enhances pet accuracy for party members within area of effect
-- Optimal Job: Dragoon
-- Lucky Number: 4 now 3
-- Unlucky Number: 8 now 7
-- Level: 23
-- Phantom Roll +1 Value: 5
--
-- Die Roll    |No DRG  |With DRG
-- --------    -------  -----------
-- 1           |+10     |+25
-- 2           |+13     |+28
-- 3           |+15     |+30
-- 4           |+40     |+55
-- 5           |+18     |+33
-- 6           |+20     |+35
-- 7           |+25     |+40
-- 8           |+5      |+20
-- 9           |+28     |+43
-- 10          |+30     |+45
-- 11          |+50     |+65
-- Bust        |-15     |-15

-- NEW: MACC/MATT for pet
-- Die Roll 	Without DRG 	With DRG
-- 1	+2	+6
-- 2	+2	+6
-- 3	+9	+13
-- 4	+3	+7
-- 5	+4	+8
-- 6	+4	+8
-- 7	+1	+5
-- 8	+5	+9
-- 9	+5	+9
-- 10	+6	+10
-- 11	+12	+16
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/ability")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------

function onAbilityCheck(player, target, ability)
    local effectID = tpz.effect.DRACHEN_ROLL
    ability:setRange(ability:getRange() + player:getMod(tpz.mod.ROLL_RANGE))
    if (player:hasStatusEffect(effectID)) then
        return tpz.msg.basic.ROLL_ALREADY_ACTIVE, 0
    elseif atMaxCorsairBusts(player) then
        return tpz.msg.basic.CANNOT_PERFORM, 0
    else
        return 0, 0
    end
end

function onUseAbility(caster, target, ability, action)
    if (caster:getID() == target:getID()) then
        corsairSetup(caster, ability, action, tpz.effect.DRACHEN_ROLL, tpz.job.DRG)
    end
    local total = caster:getLocalVar("corsairRollTotal")
    return applyRoll(caster, target, ability, action, total)
end

function applyRoll(caster, target, ability, action, total)
    local duration = 300 + caster:getMerit(tpz.merit.WINNING_STREAK) + caster:getMod(tpz.mod.PHANTOM_DURATION)
    local effectpowers = {2, 2, 9, 3, 4, 4, 1, 5, 5, 6, 12, 2}
    local effectpower = effectpowers[total]
    if (caster:getLocalVar("corsairRollBonus") == 1 and total < 12) then
        effectpower = effectpower + 4
    end
-- Apply Additional Phantom Roll+ Buff
    local phantomBase = 5 -- Base increment buff
    local effectpower = effectpower + (phantomBase * phantombuffMultiple(caster))
-- Check if COR Main or Sub
    if (caster:getMainJob() == tpz.job.COR and caster:getMainLvl() < target:getMainLvl()) then
        effectpower = effectpower * (caster:getMainLvl() / target:getMainLvl())
    elseif (caster:getSubJob() == tpz.job.COR and caster:getSubLvl() < target:getMainLvl()) then
        effectpower = effectpower * (caster:getSubLvl() / target:getMainLvl())
    end
    if (target:addCorsairRoll(caster:getMainJob(), caster:getMerit(tpz.merit.BUST_DURATION), tpz.effect.DRACHEN_ROLL, effectpower, 0, duration, caster:getID(), total, tpz.mod.MACC) == false) then
        ability:setMsg(tpz.msg.basic.ROLL_MAIN_FAIL)
    elseif total > 11 then
        ability:setMsg(tpz.msg.basic.DOUBLEUP_BUST)
    end
    return total
end
