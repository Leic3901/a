
execute store result storage minecraft:test x int 1 run scoreboard players get #2 math


$tell @a $(x)

summon text_display ~ ~ ~ {data:{x:1,y:2}}


execute if data entity @s {data:{x:1,y:2}} run summon 
modify entity @e[type=armor_stand,tag=temp,limit=1] data set from storage minecraft:pixelart pixel[{x:0,y:0}]