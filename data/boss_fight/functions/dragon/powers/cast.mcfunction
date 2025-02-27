# play effects
particle minecraft:dust 0.8 0 0.98 3 ~ ~1 ~ 3 1 3 0 32 force

# set lcg
scoreboard players set lcgModulus shroomhearth 7
function shroomhearth:lcg/random

# run a random power...

# summon mobs - more common until low health, much more common at high health
execute as @s[scores={bossHealthPercent=..30}] if score lcg shroomhearth matches 0 run function boss_fight:dragon/powers/summon
execute as @s[scores={bossHealthPercent=31..90}] if score lcg shroomhearth matches 0..1 run function boss_fight:dragon/powers/summon
execute as @s[scores={bossHealthPercent=91..}] if score lcg shroomhearth matches 0..2 run function boss_fight:dragon/powers/summon

# apply effects - more common at medium health
execute as @s[scores={bossHealthPercent=..30}] if score lcg shroomhearth matches 1 run function boss_fight:dragon/powers/distort
execute as @s[scores={bossHealthPercent=31..90}] if score lcg shroomhearth matches 2..3 run function boss_fight:dragon/powers/distort
execute as @s[scores={bossHealthPercent=91..}] if score lcg shroomhearth matches 3 run function boss_fight:dragon/powers/distort

# restore crystal - much more common at low health
execute as @s[scores={bossHealthPercent=..30}] if score lcg shroomhearth matches 2..4 run function boss_fight:dragon/powers/restore
execute as @s[scores={bossHealthPercent=31..}] if score lcg shroomhearth matches 4 run function boss_fight:dragon/powers/restore

# summon lighting - always uncommon
execute if score lcg shroomhearth matches 5 run function boss_fight:dragon/powers/strike

# create pillars - always uncommon
execute if score lcg shroomhearth matches 6 run function boss_fight:dragon/powers/pillar

# transmute blocks - always uncommon
# disabling this for now, may revisit when end has some kind of hazard block
#execute if score lcg shroomhearth matches 8 run function boss_fight:dragon/powers/transmute

# unset lcg
scoreboard players set lcg shroomhearth -1