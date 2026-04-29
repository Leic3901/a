execute as @e[type=marker,tag=y_max,limit=1] at @s unless score #y_pos pixel = #y_pos_max pixel run function ui:display/pixelart/coordination_y with storage minecraft:draw_pos




schedule function ui:display/pixelart/y_main 1t replace
execute if score #y_pos pixel = #y_pos_max pixel run schedule clear ui:display/pixelart/y_main
execute if score #y_pos pixel = #y_pos_max pixel run scoreboard players set #scan pixel 1
execute if score #y_pos pixel = #y_pos_max pixel run function ui:display/pixelart/x_main