---------------------------------------------------
-- Aero 2
---------------------------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")
require("scripts/globals/magic")

---------------------------------------------------

function onAbilityCheck(player, target, ability)
    return 0, 0
end

function onPetAbility(target, pet, skill)
    local dINT = math.floor(pet:getStat(tpz.mod.INT) - target:getStat(tpz.mod.INT))
    local tp = skill:getTP()
    local eco = target:getSystem()
    local ele = tpz.damageType.WIND
    local coe = getAvatarEcosystemCoefficient(eco, ele)

    local damage = math.floor(45 * (1 + 0.478*tp/3000) * coe)
    damage = damage + (dINT * 1.5)
    damage = MobMagicalMove(pet, target, skill, damage, tpz.magic.ele.WIND, 1, TP_NO_EFFECT, 0)
    damage = mobAddBonuses(pet, nil, target, damage.dmg, tpz.magic.ele.WIND)
    damage = AvatarFinalAdjustments(damage, pet, skill, target, tpz.attackType.MAGICAL, tpz.damageType.WIND, 1)
    
    local skillchainTier, skillchainCount = FormMagicBurst(tpz.damageType.WIND - 5, target)
    if (skillchainTier > 0) then
        skill:setMsg(747)
    end
    
    target:takeDamage(damage, pet, tpz.attackType.MAGICAL, tpz.damageType.WIND)
    target:updateEnmityFromDamage(pet, damage)

    return damage
end
