scoreboard players add #y_pos pixel 1

execute store result storage minecraft:draw_pos prs_y int 1 run scoreboard players get #y_pos pixel

# $summon marker ~ ~$(prs_y) ~ {Tags:["coord_y"],NoGravity:1b,data:{x:0,y:$(prs_y)}}

$summon marker ~ ~ ~ {Tags:["coord_y","pixel_art"],NoGravity:1b,data:{x:0,y:$(prs_y)}}

$say $(prs_y)
$execute as @e[type=marker,tag=coord_y,tag=!y_max] at @s run tp @s ~ ~-$(tp) ~
 
