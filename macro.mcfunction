scoreboard players set #intRGBA RGBA 0



scoreboard players operation #intB RGBA = #B RGBA 
scoreboard players operation #0x_B_0 RGBA = #intB RGBA
scoreboard players operation #0x_B_1 RGBA = #intB RGBA

scoreboard players operation #intG RGBA = #G RGBA
scoreboard players operation #0x_B_2 RGBA = #intG RGBA
scoreboard players operation #0x_B_3 RGBA = #intG RGBA
scoreboard players operation #intG RGBA *= #2^8 math

scoreboard players operation #intR RGBA = #R RGBA
scoreboard players operation #0x_B_4 RGBA = #intR RGBA
scoreboard players operation #0x_B_5 RGBA = #intR RGBA
scoreboard players operation #intR RGBA *= #2^16 math

scoreboard players operation #intA RGBA = #A RGBA
scoreboard players operation #intA RGBA *= #2^24 math
#生成 int R G B A 的值
scoreboard players operation #intRGBA RGBA += #intB RGBA
scoreboard players operation #intRGBA RGBA += #intG RGBA
scoreboard players operation #intRGBA RGBA += #intR RGBA
scoreboard players operation #intRGBA RGBA += #intA RGBA

#合成 int RGBA 的值

# execute if score #intRGBA RGBA matches ..0 run scoreboard players add #intRGBA RGBA

##位运算
# scoreboard players operation #0x_B_0 RGBA = #intB RGBA
# scoreboard players operation #0x_B_1 RGBA = #intB RGBA

# scoreboard players operation #0x_B_2 RGBA = #intG RGBA
# scoreboard players operation #0x_B_3 RGBA = #intG RGBA

# scoreboard players operation #0x_B_4 RGBA = #intR RGBA
# scoreboard players operation #0x_B_5 RGBA = #intR RGBA

# scoreboard players operation #0x_B_6 RGBA = #intA RGBA
# scoreboard players operation #0x_B_7 RGBA = #intA RGBA

scoreboard players operation #0x_B_0 RGBA %= #2^4 math
scoreboard players operation #0x_B_1 RGBA /= #2^4 math


scoreboard players operation #0x_B_2 RGBA %= #2^4 math
scoreboard players operation #0x_B_3 RGBA /= #2^4 math


scoreboard players operation #0x_B_4 RGBA %= #2^4 math
scoreboard players operation #0x_B_5 RGBA /= #2^4 math

scoreboard players get #0x_B_0 RGBA
scoreboard players get #0x_B_1 RGBA
scoreboard players get #0x_B_2 RGBA
scoreboard players get #0x_B_3 RGBA
scoreboard players get #0x_B_4 RGBA
scoreboard players get #0x_B_5 RGBA


# scoreboard players operation #0x_B_6 RGBA %= #2^28 math
# scoreboard players operation #0x_B_7 RGBA /= #2^28 math


data modify storage minecraft:rgba index set value {index:5}
function ui:a/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:4}
function ui:a/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:3}
function ui:a/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:2}
function ui:a/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:1}
function ui:a/bitwise with storage minecraft:rgba index

data modify storage minecraft:rgba index set value {index:0}
function ui:a/bitwise with storage minecraft:rgba index

execute store result storage minecraft:rgba intRGBA int 1 run scoreboard players get #intRGBA RGBA

function ui:a/particle with storage minecraft:rgba






