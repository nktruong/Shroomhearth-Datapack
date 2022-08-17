# Clear 1 memento
clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.memento"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 1

# update gamerule
gamerule keepInventory true

# add value 
scoreboard players add favKeepInventory shroomhearth 3600
execute if score favKeepInventory shroomhearth matches 3601.. run scoreboard players set favKeepInventory shroomhearth 3600

# create bossbar
bossbar add community:favor/keepinventory "Keep Inventory"
bossbar set community:favor/keepinventory max 3600
bossbar set community:favor/keepinventory style progress
bossbar set community:favor/keepinventory value 3600
bossbar set community:favor/keepinventory visible true
bossbar set community:favor/keepinventory players @a[scores={showFavorProgress=1}]

# announce activation
tellraw @a [{"translate":"community.favor.keepinventory_activate"}, {"text":" "}, {"selector":"@s"}]

# play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8