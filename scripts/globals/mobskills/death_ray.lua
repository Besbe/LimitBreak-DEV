---------------------------------------------
--  Death Ray
--
--  Description: Deals dark damage to an enemy.
--  Type: Magical (Dark)
--
--
---------------------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")
---------------------------------------------
function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1
	local id = mob:getID()
	
	if id == 17346673 or id == 17346674 then dmgmod = 0.2
	elseif id == 17346672 then dmgmod = 0.7 end -- UO
	
    local info = MobMagicalMove(mob, target, skill, mob:getWeaponDmg()*3.5, tpz.magic.ele.DARK, dmgmod, TP_NO_EFFECT)
    local dmg = MobFinalAdjustments(info.dmg, mob, skill, target, tpz.attackType.MAGICAL, tpz.damageType.DARK, MOBPARAM_IGNORE_SHADOWS)
    target:takeDamage(dmg, mob, tpz.attackType.MAGICAL, tpz.damageType.DARK)
    return dmg
end
