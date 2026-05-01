$summon marker ~ ~$(tp_max) ~ {Tags:["y_max","pixel_art"],NoGravity:1b} 
execute as @e[type=marker,tag=y_max,limit=1] at @s run function ui:display/pixelart/y_main