# merge NoAI and other NBT
execute as @e[type=#shroomhearth:mobs,distance=0..,tag=!vitrified] run data merge entity @s {Tags:["vitrified"],DeathLootTable:"minecraft:empty",Silent:true,Health:1}

# remove boss mobs
kill @e[type=wither,distance=0..]

# remove item entities
#kill @e[type=item,distance=0..]
