---------------------------------------------------
-- Judgment Bolt
---------------------------------------------------
require("/scripts/globals/settings")
require("/scripts/globals/status")
require("/scripts/globals/monstertpmoves")
require("/scripts/globals/magic")

---------------------------------------------------

function onAbilityCheck(player, target, ability)
    local level = player:getMainLvl() * 2

    if(player:getMP()<level) then
       return 87, 0
    end

    return 0, 0
end

function onPetAbility(target, pet, skill, master)
    local eco = target:getSystem()
    local ele = tpz.damageType.LIGHTNING
    local coe = getAvatarEcosystemCoefficient(eco, ele)
    local dINT = math.floor(pet:getStat(tpz.mod.INT) - target:getStat(tpz.mod.INT))

    local level = pet:getMainLvl()
    local damage = (48 + (level * 8))*coe
    damage = damage + (dINT * 1.5)
    damage = MobMagicalMove(pet, target, skill, damage, tpz.magic.ele.LIGHTNING, 1, TP_NO_EFFECT, 0)
    damage = mobAddBonuses(pet, nil, target, damage.dmg, tpz.magic.ele.LIGHTNING)
    damage = AvatarFinalAdjustments(damage, pet, skill, target, tpz.attackType.MAGICAL, tpz.damageType.LIGHTNING, 1)
    
    local skillchainTier, skillchainCount = FormMagicBurst(tpz.damageType.LIGHTNING - 5, target)
    if (skillchainTier > 0) then
        skill:setMsg(747)
    end

    master:setMP(0)
    target:takeDamage(damage, pet, tpz.attackType.MAGICAL, tpz.damageType.LIGHTNING)
    target:updateEnmityFromDamage(pet, damage)

    return damage
end
