# usePorcelain - flag for using Porcelain
scoreboard objectives remove usePorcelain
scoreboard objectives add usePorcelain dummy

# porcelainID - identifier to match players with their anchors
scoreboard objectives remove porcelainID
scoreboard objectives add porcelainID dummy

# nextPorcelainID - global, next ID to use for new anchor
scoreboard players set nextPorcelainID shroomhearth 0

# hasPorcelain - check if player has porcelain while in the porcelain
scoreboard objectives remove hasPorcelain
scoreboard objectives add hasPorcelain dummy

# porcelainDimID - identifier for dimension porcelain was used in
# 0  = overworld (default)
# -1 = the_nether
# 1  = the_end
scoreboard objectives remove porcelainDimID
scoreboard objectives add porcelainDimID dummy

# nearbyMonster - track nearby hostile mobs and prevent porcelain usage
scoreboard objectives remove nearbyMonster
scoreboard objectives add nearbyMonster dummy