-----------------------------------------
-- Spell: Silena
-- Removes silence and mute from target.
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    if (target:delStatusEffect(tpz.effect.SILENCE)) then
        spell:setMsg(tpz.msg.basic.MAGIC_REMOVE_EFFECT)
    else
        spell:setMsg(tpz.msg.basic.MAGIC_NO_EFFECT)
    end
    if caster:hasTrait(69) then
        caster:delStatusEffect(tpz.effect.DIVINE_SEAL)
    end
    return tpz.effect.SILENCE
end
