-----------------------------------------
-- Spell: Hecatomb Wave
-- Deals wind damage to enemies within a fan-shaped area originating from the caster. Additional effect: Blindness
-- Spell cost: 116 MP
-- Monster Type: Demons
-- Spell Type: Magical (Wind)
-- Blue Magic Points: 3
-- Stat Bonus: AGI+1
-- Level: 54
-- Casting Time: 5.25 seconds
-- Recast Time: 33.75 seconds
-- Magic Bursts on: Detonation, Fragmentation, Light
-- Combos: Max MP Boost
-----------------------------------------
require("scripts/globals/bluemagic")
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)

    local params = {}

    params.diff = caster:getStat(tpz.mod.INT) - target:getStat(tpz.mod.INT)

    params.attribute = tpz.mod.INT

    params.skillType = tpz.skill.BLUE_MAGIC

    params.bonus = 1.0

    local resist = applyResistance(caster, target, spell, params)
    local params = {}
    -- This data should match information on http://wiki.ffxiclopedia.org/wiki/Calculating_Blue_Magic_Damage
    params.attackType = tpz.attackType.BREATH
    params.damageType = tpz.damageType.WIND
    params.multiplier = 1.375
    params.tMultiplier = 1.0
    params.duppercap = 54
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.0
    params.int_wsc = 0.0
    params.mnd_wsc = 0.3
    params.chr_wsc = 0.0
    damage = BlueMagicalSpell(caster, target, spell, params, MND_BASED)
    damage = BlueFinalAdjustments(caster, target, spell, damage, params)

    if (damage > 0 and resist > 0.25) then
        local typeEffect = tpz.effect.BLINDNESS
        target:delStatusEffect(typeEffect)
        target:addStatusEffect(typeEffect, 5, 0, math.ceil(getBlueEffectDuration(caster,resist,typeEffect) * tryBuildResistance(tpz.magic.buildcat.BLIND, target)))
    end

    return damage
end
