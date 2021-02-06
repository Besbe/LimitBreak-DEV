-----------------------------------------
-- ID: 16937
-- Item: Ice Brand
-- Additional Effect: Ice Damage
-- Gweivyth
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 15

    if (math.random(0,99) >= chance) then
        return 0,0,0
    else
        local dmg = math.random(13,26)
        local params = {}
        params.bonusmab = 0
        params.includemab = false
        dmg = addBonusesAbility(player, tpz.magic.ele.ICE, target, dmg, params)
        dmg = dmg * applyResistanceAddEffect(player,target,tpz.magic.ele.ICE,0)
        dmg = adjustForTarget(target,dmg,tpz.magic.ele.ICE)
        dmg = finalMagicNonSpellAdjustments(player,target,tpz.magic.ele.ICE,dmg)

        local message = tpz.msg.basic.ADD_EFFECT_DMG
        if (dmg < 0) then
            message = tpz.msg.basic.ADD_EFFECT_HEAL
        end

        return tpz.subEffect.ICE_DAMAGE,message,dmg
    end
end