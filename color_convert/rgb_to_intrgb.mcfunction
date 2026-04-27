#转为int RGBA
scoreboard players operation #intB RGBA = #B RGBA 
scoreboard players operation #intG RGBA = #G RGBA
scoreboard players operation #intR RGBA = #R RGBA
scoreboard players operation #intA RGBA = #A RGBA

scoreboard players operation #intB RGBA *= #1 math
scoreboard players operation #intG RGBA *= #2^8 math
scoreboard players operation #intR RGBA *= #2^16 math
scoreboard players operation #intA RGBA *= #2^24 math

#录入hex栏位
scoreboard players operation #0x_0 RGBA = #B RGBA
scoreboard players operation #0x_1 RGBA = #B RGBA
scoreboard players operation #0x_2 RGBA = #G RGBA
scoreboard players operation #0x_3 RGBA = #G RGBA
scoreboard players operation #0x_4 RGBA = #R RGBA
scoreboard players operation #0x_5 RGBA = #R RGBA


#合成 int RGBA 的值
scoreboard players set #intRGBA RGBA 0
scoreboard players operation #intRGBA RGBA += #intB RGBA
scoreboard players operation #intRGBA RGBA += #intG RGBA
scoreboard players operation #intRGBA RGBA += #intR RGBA
scoreboard players operation #intRGBA RGBA += #intA RGBA



# execute if score #intRGBA RGBA matches ..0 run scoreboard 

##位运算

scoreboard players operation #0x_0 RGBA %= #2^4 math
scoreboard players operation #0x_1 RGBA /= #2^4 math


scoreboard players operation #0x_2 RGBA %= #2^4 math
scoreboard players operation #0x_3 RGBA /= #2^4 math


scoreboard players operation #0x_4 RGBA %= #2^4 math
scoreboard players operation #0x_5 RGBA /= #2^4 math

#转为hex
data modify storage minecraft:rgba index set value {index:5}
function ui:display/color_convert/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:4}
function ui:display/color_convert/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:3}
function ui:display/color_convert/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:2}
function ui:display/color_convert/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:1}
function ui:display/color_convert/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:0}
function ui:display/color_convert/bitwise with storage minecraft:rgba index

#intrgba 存入storage
execute store result storage minecraft:rgba HEX.intRGBA int 1 run scoreboard players get #intRGBA RGBA

#生成粒子
function ui:display/color_convert/particle with storage minecraft:rgba HEX
execute unless score #H HSV matches 359.. run schedule function ui:display/color_convert/hsv_to_rgb 1t append
# execute unless score #S HSV matches ..0 run schedule function ui:display/color_convert/hsv_to_rgb 1t append
 



