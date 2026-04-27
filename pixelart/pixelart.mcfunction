####色号与对应坐标



####画面左下角坐标
##扫描式

###storage color
data modify storage minecraft:pixelart {map:[16,16],pixel:{coord:[0,0],color:"#123456",zuobiao:[1,0],color:"#123456"}}

execute store result score #x_pos_max pixel run data get storage minecraft:pixelart map[0]
execute store result score #y_pos_max pixel run data get storage minecraft:pixelart map[1]

scoreboard players set #x_pos pixel 0
scoreboard players set #y_pos pixel 0


execute store result storage minecraft:draw_pos prs_x int 1 run scoreboard players get #x_pos pixel




execute unless score #x_pos pixel = #x_pos_max pixel run
execute unless score #y_pos pixel = #y_pos_max pixel run












####               0.125


{pixel:{:[x,y],color:[r:"",g:"",b"]}




        execute at @e[type=marker,tag=inital_point] run summon text_display ~$x ~$y ~ {text:{text:"■",color:"#color"}} 





####rgb

