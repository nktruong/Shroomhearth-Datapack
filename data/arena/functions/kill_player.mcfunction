# revoke trigger
advancement revoke @s only arena:kill_player

# additional check for player in an arena
execute if predicate arena:in_arena if entity @p[distance=0.1..128,predicate=arena:in_arena] run function arena:kill_player_in_arena