execute store result storage minecraft:draw_pos prs_x int 1 run scoreboard players get #x_pos pixel

$say $(prs_x)
$summon text_display ~$(prs_x) ~ ~ {Tags:["coord_x","$(prs_x)"],NoGravity:1b,text:{text:"■",color:"#FFFF00"},transformation:{scale:[8.0,8.0,8.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0]},background:false}
