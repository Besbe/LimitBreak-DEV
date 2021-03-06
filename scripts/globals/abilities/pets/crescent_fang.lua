---------------------------------------------------
-- Crescent Fang
---------------------------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/summon")

---------------------------------------------------

function onAbilityCheck(player, target, ability)
    return 0, 0
end

function onPetAbility(target, pet, skill)
    local eco = target:getSystem()
    local ele = tpz.damageType.DARK
    local coe = getAvatarEcosystemCoefficient(eco, ele)
    local numhits = 1
    local accmod = 1
    local dmgmod = 3.5 * coe

    local totaldamage = 0
    local damage = AvatarPhysicalMove(pet, target, skill, numhits, accmod, dmgmod, 0, TP_NO_EFFECT, 1, 2, 3)
    totaldamage = AvatarFinalAdjustments(damage.dmg, pet, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.PIERCING, numhits)

    local resist = applyResistanceAbility(pet,target,tpz.magic.element.DARK,tpz.skill.ENFEEBLING_MAGIC,bonus)
    local duration = 90 * resist
    duration = math.ceil(duration * tryBuildResistance(tpz.magic.buildcat.PARALYZE, target))
    if resist >= 0.5 then
        target:delStatusEffect(tpz.effect.PARALYSIS)
        target:addStatusEffect(tpz.effect.PARALYSIS, 30, 0, duration)
    end

    target:takeDamage(totaldamage, pet, tpz.attackType.PHYSICAL, tpz.damageType.PIERCING)
    target:updateEnmityFromDamage(pet, totaldamage)

    return totaldamage
end
