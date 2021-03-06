-----------------------------------
-- Area: Temple of Uggalepih
--   NM: Beryl-footed Molberry
-----------------------------------
require("scripts/globals/hunts")
require("scripts/globals/status")
mixins =
{
    require("scripts/mixins/families/tonberry"),
    require("scripts/mixins/job_special")
}
-----------------------------------

function onMobSpawn(mob)
    tpz.mix.jobSpecial.config(mob, {
        specials =
        {
            {id = tpz.jsa.MIJIN_GAKURE, hpp = math.random(20, 30)},
        },
    })
    
    mob:setMobMod(tpz.mobMod.GIL_MIN, 9000)
    mob:setMobMod(tpz.mobMod.GIL_MAX, 11000)
end

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 387)
end
