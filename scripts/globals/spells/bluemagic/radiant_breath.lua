-----------------------------------------
-- Spell: Radiant Breath
-- Deals light damage to enemies within a fan-shaped area of effect originating from the caster. Additional effect: Slow and Silence.
-- Spell cost: 116 MP
-- Monster Type: Wyverns
-- Spell Type: Magical (Light)
-- Blue Magic Points: 4
-- Stat Bonus: CHR+1, HP+5
-- Level: 54
-- Casting Time: 5.25 seconds
-- Recast Time: 33.75 seconds
-- Magic Bursts on: Transfixion, Fusion, Light
-- Combos: None
-----------------------------------------
require("scripts/globals/bluemagic")
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    local multi = 2.90
    if (caster:hasStatusEffect(tpz.effect.AZURE_LORE)) then
        multi = multi + 0.50
    end

    local params = {}
    -- This data should match information on http://wiki.ffxiclopedia.org/wiki/Calculating_Blue_Magic_Damage
    params.attackType = tpz.attackType.BREATH
    params.damageType = tpz.damageType.LIGHT
    params.multiplier = multi
    params.tMultiplier = 1.5
    params.duppercap = 69
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.0
    params.int_wsc = 0.0
    params.mnd_wsc = 0.3
    params.chr_wsc = 0.0
    params.diff = caster:getStat(tpz.mod.INT) - target:getStat(tpz.mod.INT)
    params.attribute = tpz.mod.INT
    params.skillType = tpz.skill.BLUE_MAGIC
    params.bonus = 1.0

    local resist = applyResistance(caster, target, spell, params)
    local damage = BlueMagicalSpell(caster, target, spell, params, MND_BASED)
    damage = BlueFinalAdjustments(caster, target, spell, damage, params)
    
    local cMND = caster:getStat(tpz.mod.MND)
    local tMND = target:getStat(tpz.mod.MND)
    local power = 1800
    
    if cMND < tMND then
        power = power - (tMND - cMND)*50
        if power < 300 then
            power = 300
        end
    end
    
    local duration1 = getBlueEffectDuration(caster,resist,tpz.effect.SLOW)
    duration1 = math.ceil(duration1 * tryBuildResistance(tpz.magic.buildcat.SLOW, target))
    local duration2 = getBlueEffectDuration(caster,resist,tpz.effect.SILENCE)
    duration1 = math.ceil(duration1 * tryBuildResistance(tpz.magic.buildcat.SILENCE, target))

    if (damage > 0 and resist > 0.3) then
        target:delStatusEffect(tpz.effect.SLOW)
        target:addStatusEffect(tpz.effect.SLOW, power, 0, duration1)
    end

    if (damage > 0 and resist > 0.3) then
        target:delStatusEffect(tpz.effect.SILENCE)
        target:addStatusEffect(tpz.effect.SILENCE, 25, 0, duration2)
    end

    return damage
end
