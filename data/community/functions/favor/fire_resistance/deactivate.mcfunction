# remove bossbar
bossbar remove community:favor/fire_resistance

# announce expiration
tellraw @a [{"text":"The "},{"color":"#E49A3A","translate":"community.favor.fire_resistance","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.fire_resistance.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1