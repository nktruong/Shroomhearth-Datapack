# revoke trigger for damage bonus
advancement revoke @s only boss_fight:dragon/player_damage

# increase rage depending on remaining health
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=..30}] run scoreboard players add @s rage 19
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=31..50}] run scoreboard players add @s rage 15
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=51..70}] run scoreboard players add @s rage 11
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=71..90}] run scoreboard players add @s rage 7
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=91..}] run scoreboard players add @s rage 3