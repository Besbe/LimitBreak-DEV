---------------------------------------------------
-- Predator Claws M=10 subsequent hits M=2
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
    local ele = tpz.damageType.WIND
    local coe = getAvatarEcosystemCoefficient(eco, ele)
    local numhits = 3
    local accmod = -5
    local dmgmod = 10 * coe
    local dmgmodsubsequent = 2 * coe
    local critmod = 7 + math.floor(12*skill:getTP()/3000)
    
    local totaldamage = 0
    local damage = AvatarPhysicalMove(pet, target, skill, numhits, accmod, dmgmod, dmgmodsubsequent, TP_NO_EFFECT, 1, 2, 3, critmod)
    totaldamage = AvatarFinalAdjustments(damage.dmg, pet, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.SLASHING, numhits)
    target:takeDamage(totaldamage, pet, tpz.attackType.PHYSICAL, tpz.damageType.SLASHING)
    target:updateEnmityFromDamage(pet, totaldamage)
    return totaldamage
end
