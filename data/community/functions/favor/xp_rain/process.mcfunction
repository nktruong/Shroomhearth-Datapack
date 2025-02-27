# tick value
scoreboard players remove favXPRain shroomhearth 1

# summon xp rain around players
execute as @a[predicate=porcelain:in_overworld] at @s run summon minecraft:chicken ~ 320 ~ {Tags:["xp_rain","xp_rain_reposition"],Passengers:[{id:"minecraft:experience_orb",Tags:["xp_rain"],Value:1}],ActiveEffects:[{Id:14,ShowParticles:false,Duration:999999}],EggLayTime:999999999,DeathLootTable:"minecraft:empty",Invulnerable:true,Silent:true}

# reposition orbs
schedule function community:favor/xp_rain/reposition_xp_rain_drops 10t

# check if orbs have fallen
execute as @e[type=minecraft:chicken,tag=xp_rain_falling] at @s if predicate community:favor/xp_rain/near_ground run function community:favor/xp_rain/remove_harness_and_replace
execute as @e[type=minecraft:chicken,tag=xp_rain_falling] at @s unless predicate community:favor/xp_rain/has_xp_passenger run function community:favor/xp_rain/remove_harness

# summon particles on falling orbs
execute as @e[type=minecraft:chicken,tag=xp_rain_falling] at @s run particle minecraft:firework ~ ~0.7 ~ 0 0 0 0 1

# update bossbar
execute store result bossbar community:favor/xp_rain value run scoreboard players get favXPRain shroomhearth
bossbar set community:favor/xp_rain players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favXPRain shroomhearth matches ..0 run function community:favor/xp_rain/deactivate