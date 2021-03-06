-----------------------------------
-- Area: Bibiki Bay
--   NM: Splacknuck
-----------------------------------
require("scripts/globals/hunts")
require("scripts/globals/mobs")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.ADD_EFFECT, 1)
end

function onAdditionalEffect(mob, target, damage)
    local params = {}
	params.power = 30
	return tpz.mob.onAddEffect(mob, target, damage, tpz.mob.ae.ENWATER, params)
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 267)
end
