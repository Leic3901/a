scoreboard players add #y_pos pixel 1

execute store result storage minecraft:draw_pos prs_y int 1 run scoreboard players get #y_pos pixel

# $summon marker ~ ~$(prs_y) ~ {Tags:["coord_y"],NoGravity:1b,data:{x:0,y:$(prs_y)}}

$summon armor_stand ~ ~ ~ {Tags:["coord_y"],NoGravity:1b,data:{x:0,y:$(prs_y)}}

$say $(prs_y)
execute as @e[type=armor_stand,tag=coord_y] at @s run tp @s ~ ~-0.125 ~
 
