# set gear variants for mobs that meet the criteria

# custom model data codes:
# - pillager:        411
# - vindicator:      712
# - vex:             738
# - piglin:          416
# - piglin brute:    850
# - wither skeleton: 317

# pillager - soul crossbow
execute as @s[type=minecraft:pillager] if predicate item_skins:soul_crossbow run data modify entity @s HandItems[0].tag.CustomModelData set value 411

# vindicator - highland axe
execute as @s[type=minecraft:vindicator] if predicate item_skins:highland_axe run data modify entity @s HandItems[0].tag.CustomModelData set value 712

# vex - soul knife - extra line to modify HandDropChances
execute as @s[type=minecraft:vex] if predicate item_skins:soul_knife run function item_skins:modify_vex

# piglin with sword - broken sawblade
execute as @s[type=minecraft:piglin] if predicate item_skins:broken_sawblade run data modify entity @s HandItems[0].tag.CustomModelData set value 416

# piglin with crossbow - cog crossbow
execute as @s[type=minecraft:piglin] if predicate item_skins:cog_crossbow run data modify entity @s HandItems[0].tag.CustomModelData set value 416

# piglin brute - firebrand
execute as @s[type=minecraft:piglin_brute] if predicate item_skins:firebrand run data modify entity @s HandItems[0].tag.CustomModelData set value 850

# wither skeleton - claymore
execute as @s[type=minecraft:wither_skeleton] if predicate item_skins:heartstealer run data modify entity @s HandItems[0].tag.CustomModelData set value 317

# set tag so not targeted again
tag @s add item_skin