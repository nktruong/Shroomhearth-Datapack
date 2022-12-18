# add entity tags to relavent entities
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_axe"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_hoe"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:fishing_rod"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_helmet"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_chestplate"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_leggings"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_boots"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:turtle_helmet"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:shield"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:filled_map"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:orange_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:magenta_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:lime_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:pink_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:gray_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_gray_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:cyan_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:purple_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:brown_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:green_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_shulker_box"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_shovel"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_axe"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_hoe"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_helmet"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_chestplate"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_leggings"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_boots"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:bundle"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:spyglass"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] add persistant
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}] add persistant

# reset Age property on tagged entities
execute as @e[type=minecraft:item,tag=persistant] if data entity @s Item.tag.display.Name run function item_interactions:reset_item_age

# re-schedule
schedule function item_interactions:8s 8s