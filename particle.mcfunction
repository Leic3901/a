# $execute as @a at @s run summon text_display ~ ~2 ~ {text:{color:"#$(5)$(4)$(3)$(2)$(1)$(0)","text":"$(5)$(4)$(3)$(2)$(1)$(0)",shadow_color:$(intRGBA)},billboard:"center",background:false}
scoreboard players add #H HSV 1
$execute as @e[type=marker,tag=circle] at @s run summon text_display ~ ~ ~ {text:{color:"#$(5)$(4)$(3)$(2)$(1)$(0)","text":"-",shadow_color:$(intRGBA)},billboard:"center",background:false}
execute as @e[type=marker,tag=circle] at @s run tp @s ^ ^ ^0.1