-----------------------------------------
-- Spell: Aspir
-- Drain functions only on skill level!!
-----------------------------------------
require("scripts/globals/magic")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    if getElementalSDT(8,target) == 50 then
        spell:setMsg(tpz.msg.basic.MAGIC_NO_EFFECT)
        return 0
    end
    local dmg = 10 + 0.575 * caster:getSkillLevel(tpz.skill.DARK_MAGIC)
    --get resist multiplier (1x if no resist)
    local params = {}
    params.diff = caster:getStat(tpz.mod.INT)-target:getStat(tpz.mod.INT)
    params.attribute = tpz.mod.INT
    params.skillType = tpz.skill.DARK_MAGIC
    params.bonus = 1.0
    local resist = applyResistance(caster, target, spell, params)
    --get the resisted damage
    dmg = dmg*resist
    --add on bonuses (staff/day/weather/jas/mab/etc all go in this function)
    dmg = addBonuses(caster, spell, target, dmg)
    --add in target adjustment
    dmg = adjustForTarget(target, dmg, spell:getElement())
    --add in final adjustments

    if (dmg < 0) then
        dmg = 0
    end

    dmg = dmg * DARK_POWER

    if (target:getMP() > dmg) then
        caster:addMP(dmg)
        target:delMP(dmg)
    else
        dmg = target:getMP()
        caster:addMP(dmg)
        target:delMP(dmg)
    end

    return dmg
end
