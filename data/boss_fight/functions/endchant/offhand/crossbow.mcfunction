# set lcg
scoreboard players set lcgModulus shroomhearth 3
function shroomhearth:lcg/random

# run item modifiers based on lcg result
execute if score lcg shroomhearth matches 0 run item modify entity @s weapon.offhand boss_fight:endchant/quick_charge
execute if score lcg shroomhearth matches 1 run item modify entity @s weapon.offhand boss_fight:endchant/unbreaking

# piercing - gets unbreaking if multishot is present
execute if score lcg shroomhearth matches 2 unless predicate boss_fight:enchanted/offhand/multishot run item modify entity @s weapon.offhand boss_fight:endchant/piercing
execute if score lcg shroomhearth matches 2 if predicate boss_fight:enchanted/offhand/multishot run item modify entity @s weapon.offhand boss_fight:endchant/unbreaking

# unset lcg
scoreboard players set lcg shroomhearth -1

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Crossbow attunes to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5

# grant advancement
advancement grant @s only boss_fight:dragon/endchanted