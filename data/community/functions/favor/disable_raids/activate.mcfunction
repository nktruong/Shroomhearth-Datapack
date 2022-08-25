# Clear 1 charm
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# update gamerule
gamerule doPatrolSpawning false
gamerule disableRaids true

# update active favors if favor is not already active
execute if score favDisableRaids shroomhearth matches 0 run scoreboard players add favActive shroomhearth 1

# add value - 3600 seconds in an hour
scoreboard players add favDisableRaids shroomhearth 3600
execute if score favDisableRaids shroomhearth matches 3601.. run scoreboard players set favDisableRaids shroomhearth 3600

# create bossbar
bossbar add community:favor/disable_raids [{"color":"#5a2f38","translate":"community.favor.disable_raids"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set community:favor/disable_raids max 3600
bossbar set community:favor/disable_raids style progress
bossbar set community:favor/disable_raids value 3600
bossbar set community:favor/disable_raids visible true
bossbar set community:favor/disable_raids players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"text":"The "},{"color":"#5a2f38","translate":"community.favor.disable_raids","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.disable_raids.tooltip"}}},{"color":"white","text":" favor was activated by "},{"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8

# grant advancement
advancement grant @s only community:activate_favor