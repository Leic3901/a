# $execute as @a at @s run summon text_display ~ ~2 ~ {text:{color:"#$(5)$(4)$(3)$(2)$(1)$(0)","text":"$(5)$(4)$(3)$(2)$(1)$(0)",shadow_color:$(intRGBA)},billboard:"center",background:false}



# scoreboard players remove #S HSV 10
execute as @e[type=armor_stand,tag=circle] at @s run tp @s ~ ~ ~ ~10 ~
scoreboard players add #H HSV 2
$execute as @e[type=armor_stand,tag=circle] at @s run summon text_display ^ ^ ^10 {Tags:["unrotated"],text:{color:"#$(5)$(4)$(3)$(2)$(1)$(0)","text":"_",shadow_color:$(intRGBA)},background:false,billboard:"fixed",transformation:{scale:[10.0,10.0,10.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0]}}
$execute as @e[type=armor_stand,tag=circle] at @s run summon text_display ^ ^ ^10 {Tags:["unrotated"],text:{color:"#$(5)$(4)$(3)$(2)$(1)$(0)","text":"_",shadow_color:$(intRGBA)},background:false,billboard:"fixed",transformation:{scale:[10.0,10.0,10.0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0,0,0]}}

execute as @e[tag=unrotated] run data modify entity @s Rotation set from entity @e[type=armor_stand,tag=circle,limit=1] Rotation

# execute as @e[tag=unrotated] run data modify entity @s Rotation[0] set from entity @e[type=armor_stand,tag=circle,limit=1] Rotation[0]

tag @e[tag=unrotated] remove unrotated

## billboard:"center"



# execute as @e[tag=circle,type=armor_stand] at @e[type=armor_stand,tag=circle] as @s run tp @s ^ ^ ^3
# tp @e[tag=circle,type=armor_stand] ~ ~ ~ ~1 ~

