-----------------------------------
-- Area: Behemoth's Dominion
--  HNM: King Behemoth
-----------------------------------
local ID = require("scripts/zones/Behemoths_Dominion/IDs")
mixins = {require("scripts/mixins/rage")}
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/titles")
require("scripts/globals/magic")
require("scripts/globals/mobs")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(tpz.mobMod.MAGIC_COOL, 60)
end

function onMobSpawn(mob)
    if LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0 then
        GetNPCByID(ID.npc.BEHEMOTH_QM):setStatus(tpz.status.DISAPPEAR)
    end
    
    mob:setMobMod(tpz.mobMod.ADD_EFFECT, 1)

    mob:setLocalVar("[rage]timer", 3600) -- 60 minutes
    mob:addMod(tpz.mod.ATT, -50)
    --mob:addMod(tpz.mod.ATTP, 35)
    mob:setMod(tpz.mod.RESBUILD_GRAVITY, 10)
end

function onAdditionalEffect(mob, target, damage)
    local params = {}
    params.chance = 20
    params.duration = 5
    return tpz.mob.onAddEffect(mob, target, damage, tpz.mob.ae.STUN, params)
end

function onSpellPrecast(mob, spell)
    if spell:getID() == 218 then
        spell:setAoE(tpz.magic.aoe.RADIAL)
        spell:setFlag(tpz.magic.spellFlag.HIT_ALL)
        spell:setRadius(30)
        spell:setAnimation(280)
        spell:setMPCost(1)
    end
end

function onMobWeaponSkill(target, mob, skill)
    if skill:getID() == 629 and math.random() < 0.7 then -- thunderbolt
        --mob:queue(100, function(mob)
        mob:castSpell()
        --end)
    end
end

function onMobDeath(mob, player, isKiller)
    player:addTitle(tpz.title.BEHEMOTH_DETHRONER)
end

function onMobDespawn(mob)
    -- Set King_Behemoth's Window Open Time
    if LandKingSystem_HQ ~= 1 then
        local wait = 72 * 3600
        SetServerVariable("[POP]King_Behemoth", os.time() + wait) -- 3 days
        if LandKingSystem_HQ == 0 then -- Is time spawn only
            DisallowRespawn(mob:getID(), true)
        end
    end

    -- Set Behemoth's spawnpoint and respawn time (21-24 hours)
    if LandKingSystem_NQ ~= 1 then
        SetServerVariable("[PH]King_Behemoth", 0)
        DisallowRespawn(ID.mob.BEHEMOTH, false)
        UpdateNMSpawnPoint(ID.mob.BEHEMOTH)
        GetMobByID(ID.mob.BEHEMOTH):setRespawnTime(75600 + math.random(0, 6) * 1800) -- 21 - 24 hours with half hour windows
    end
end
