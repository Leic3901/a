####色号与对应坐标



####画面左下角坐标
##扫描式

###storage color
data merge storage minecraft:pixelart {map:[64,64],pixel:[{x:0,y:0,color:"#123456"},{x:1,y:0,color:"#123456"}]}

execute store result score #x_pos_max pixel run data get storage minecraft:pixelart map[0]
execute store result score #y_pos_max pixel run data get storage minecraft:pixelart map[1]

scoreboard players set #x_pos pixel 0
scoreboard players set #y_pos pixel 0

execute store result storage minecraft:draw_pos prs_x int 1 run scoreboard players get #x_pos pixel
execute store result storage minecraft:draw_pos prs_y int 1 run scoreboard players get #y_pos pixel

execute at @e[tag=tester] run function ui:display/pixelart/y_main


# execute unless score #y_pos pixel = #y_pos_max pixel run function ui:display/pixelart/coordination_x with storage draw_pos


# execute unless score #x_pos pixel = #x_pos_max pixel run function ui:display/pixelart/coordination_x with storage draw_pos












####               0.125





####rgb

