---------------------------------------------------
-- Somnolence
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
    local damage = 10 + pet:getMainLvl() * 2
    local resist = applyPlayerResistance(pet, -1, target, 0, tpz.skill.ELEMENTAL_MAGIC, tpz.magic.ele.DARK)
    local duration = 120

    damage = damage*resist
    damage = MobMagicalMove(pet,target,skill,damage,tpz.magic.ele.DARK,1,TP_NO_EFFECT,0)
    --damage = mobAddBonuses(pet, nil, target, damage.dmg, tpz.magic.ele.DARK) this has magic burst on it and this is a skillchain property move. so we skip it.
    damage = AvatarFinalAdjustments(damage.dmg,pet,skill,target,tpz.attackType.MAGICAL,tpz.damageType.DARK,1)
    
    if resist < 0.25 then  --the gravity effect from this ability is more likely to land than Tail Whip
        resist = 0
    end

    duration = duration * resist
    duration = math.ceil(duration * tryBuildResistance(tpz.magic.buildcat.GRAVITY, target))

    if duration > 0 and target:hasStatusEffect(tpz.effect.WEIGHT) == false then
        target:addStatusEffect(tpz.effect.WEIGHT, 50, 0, duration)
    end
    
    target:takeDamage(damage, pet, tpz.attackType.MAGICAL, tpz.damageType.DARK)
    target:updateEnmityFromDamage(pet,damage)
    
    return damage
end
