# send message
tellraw @s[advancements={arena:inside_arena=true}] {"translate":"arena.leaving","hoverEvent":{"action":"show_text","contents":{"translate":"arena.tooltip"}}}

# revoke opposing trigger
advancement revoke @s[advancements={arena:inside_arena=true}] only arena:inside_arena