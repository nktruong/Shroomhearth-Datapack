################################################################
# Modules
# enable/disable specific command features
################################################################


# Flags
execute as @a[score={playerSneak=1..}] at @s run scoreboard players set @s playerSneak 0
execute as @a[score={rng=9..}] at @s run scoreboard players set @s rng 0

# Community
#function bityard:community_score

# Relic Items
function bityard:solomons_shoes
