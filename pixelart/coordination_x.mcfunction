execute store result storage minecraft:draw_pos prs_x int 1 run scoreboard players get #x_pos pixel

$tp @s ~$(tp) ~ ~
$data merge entity @s {data:{x:$(prs_x)}}
$say $(prs_x)
execute store result score @s x_coord run data get entity @s data.x
execute store result score @s y_coord run data get entity @s data.y
scoreboard players operation @s index = @s x_coord
scoreboard players operation @s index_temp = @s y_coord
scoreboard players operation @s index_temp *= #x_pos_max pixel
scoreboard players operation @s index += @s index_temp
execute store result entity @s data.index int 1 run scoreboard players get @s index

function ui:display/pixelart/list with entity @s data


# $summon marker ~$(prs_x) ~ ~ {Tags:["coord_x","$(prs_x)"],NoGravity:1b,text:{text:"■",color:"#FFFF00"},transformation:{scale:[8.0,8.0,8.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0]},data:{x:$(prs_x),y:0},background:false}

# execute as @e[type=marker,tag=coord_x] at @s store result entity @s data.y int 1 run data get entity @e[type=marker,dy=0,tag=coord_y,limit=1] data.y
