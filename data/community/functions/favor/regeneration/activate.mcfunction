# Clear 1 charm
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# update active favors if favor is not already active
execute if score favRegeneration shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favRegeneration shroomhearth 3600

# create bossbar
bossbar add community:favor/regeneration [{"color":"#CD5CAB","translate":"community.favor.regeneration"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/regeneration max 3600
bossbar set community:favor/regeneration style progress
bossbar set community:favor/regeneration value 3600
bossbar set community:favor/regeneration visible true
bossbar set community:favor/regeneration players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#CD5CAB","translate":"community.favor.regeneration","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.regeneration.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:community_contributor