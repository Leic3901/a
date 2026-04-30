##需要更改的部分
data merge storage draw_pos {tp:0.125,tp_max:30}
##



execute store result score #x_pos_max pixel run data get storage minecraft:pixelart map.x
execute store result score #y_pos_max pixel run data get storage minecraft:pixelart map.y
scoreboard players set #x_pos pixel 0
scoreboard players set #y_pos pixel 0
scoreboard players set #scan pixel 0
scoreboard players operation #x_y_max pixel = #x_pos_max pixel
scoreboard players operation #x_y_max pixel *= #y_pos_max pixel

execute store result storage minecraft:draw_pos prs_x int 1 run scoreboard players get #x_pos pixel
execute store result storage minecraft:draw_pos prs_y int 1 run scoreboard players get #y_pos pixel



# execute at @e[tag=tester] run function ui:display/pixelart/themax_y with storage minecraft:pixelart map

execute at @e[tag=tester] run function ui:display/pixelart/themax_y with storage draw_pos


# execute unless score #y_pos pixel = #y_pos_max pixel run function ui:display/pixelart/coordination_x with storage draw_pos


# execute unless score #x_pos pixel = #x_pos_max pixel run function ui:display/pixelart/coordination_x with storage draw_pos



