# playerHealth - tracking entity Health, displayed under nametag
scoreboard objectives remove playerHealth
scoreboard objectives add playerHealth health "\u00A74\u2764\u00A7r"

# playerInsomnia - track "since last rest" statistic
scoreboard objectives remove playerInsomnia
scoreboard objectives add playerInsomnia minecraft.custom:minecraft.time_since_rest "Insomnia"

# playerFood - track player hunger
scoreboard objectives remove playerFood
scoreboard objectives add playerFood food "Food"

# clear objectives below name
scoreboard objectives setdisplay belowName