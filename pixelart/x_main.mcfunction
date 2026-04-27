execute as @e[type=marker,tag=coord_y] at @s if score #scan pixel matches 1 run function ui:display/pixelart/coordination_x with storage minecraft:draw_pos


schedule function ui:display/pixelart/x_main 1t replace

execute if score #x_pos pixel >= #x_pos_max pixel run schedule clear ui:display/pixelart/x_main

execute if score #x_pos pixel = #x_pos_max pixel run kill @e[type=marker,tag=coord_y]
scoreboard players add #x_pos pixel 1



