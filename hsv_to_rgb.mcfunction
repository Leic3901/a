# execute store result score #H HSV run random value 0..359
# execute store result score #S HSV run random value 0..1000
# execute store result score #V HSV run random value 0..1000
# execute store result score #A RGBA run random value 60..150
#C=V*S/1000   m=V-C
#sector = H/60  f= H%60
#X=C*min(f,60-f)/60
#sector 0 = C X 0
#       1 = X C 0
#       2 = 0 C X
#       3 = 0 X C
#       4 = X 0 C
#       5 = C 0 X
# R=(R'+m)*255/1000

#C
scoreboard players operation #C HSV = #V HSV
scoreboard players operation #C HSV *= #S HSV
scoreboard players operation #C HSV /= #1000 math

#m
scoreboard players operation #m HSV = #V HSV
scoreboard players operation #m HSV -= #C HSV

#sector
scoreboard players operation #sector HSV = #H HSV 
scoreboard players operation #sector HSV /= #60 math 

#f
scoreboard players operation #f HSV = #H HSV 
scoreboard players operation #f HSV %= #60 math 

# #min(f,60-f)
scoreboard players operation #60_minus_f HSV = #60 math
scoreboard players operation #60_minus_f HSV -= #f HSV
scoreboard players set #min_f_60-f HSV 0
# execute if score #60_minus_f HSV <= #f HSV run scoreboard players operation #min_f_60-f HSV = #60_minus_f HSV
# execute if score #60_minus_f HSV > #f HSV run scoreboard players operation #min_f_60-f HSV = #f HSV
scoreboard players operation #min_f_60-f HSV = #f HSV
execute if score #60_minus_f HSV < #f HSV run scoreboard players operation #min_f_60-f HSV = #60_minus_f HSV


#X
scoreboard players operation #X HSV = #C HSV
scoreboard players operation #X HSV *= #min_f_60-f HSV
scoreboard players operation #X HSV /= #60 math


##sector judgement
execute if score #sector HSV matches 0 run scoreboard players operation #r HSV = #C HSV
execute if score #sector HSV matches 0 run scoreboard players operation #g HSV = #X HSV
execute if score #sector HSV matches 0 run scoreboard players set #b HSV 0

execute if score #sector HSV matches 1 run scoreboard players operation #r HSV = #X HSV
execute if score #sector HSV matches 1 run scoreboard players operation #g HSV = #C HSV
execute if score #sector HSV matches 1 run scoreboard players set #b HSV 0

execute if score #sector HSV matches 2 run scoreboard players set #r HSV 0
execute if score #sector HSV matches 2 run scoreboard players operation #g HSV = #C HSV
execute if score #sector HSV matches 2 run scoreboard players operation #b HSV = #X HSV

execute if score #sector HSV matches 3 run scoreboard players set #r HSV 0
execute if score #sector HSV matches 3 run scoreboard players operation #g HSV = #X HSV
execute if score #sector HSV matches 3 run scoreboard players operation #b HSV = #C HSV

execute if score #sector HSV matches 4 run scoreboard players operation #r HSV = #X HSV
execute if score #sector HSV matches 4 run scoreboard players set #g HSV 0
execute if score #sector HSV matches 4 run scoreboard players operation #b HSV = #C HSV

execute if score #sector HSV matches 5 run scoreboard players operation #r HSV = #C HSV
execute if score #sector HSV matches 5 run scoreboard players set #g HSV 0
execute if score #sector HSV matches 5 run scoreboard players operation #b HSV = #X HSV

#HSV to RGB
scoreboard players operation #R_temp HSV = #r HSV
scoreboard players operation #R_temp HSV += #m HSV
scoreboard players operation #R_temp HSV *= #255 math
scoreboard players operation #R_temp HSV /= #1000 math
scoreboard players operation #R RGBA = #R_temp HSV

scoreboard players operation #G_temp HSV = #g HSV
scoreboard players operation #G_temp HSV += #m HSV
scoreboard players operation #G_temp HSV *= #255 math
scoreboard players operation #G_temp HSV /= #1000 math
scoreboard players operation #G RGBA = #G_temp HSV

scoreboard players operation #B_temp HSV = #b HSV
scoreboard players operation #B_temp HSV += #m HSV
scoreboard players operation #B_temp HSV *= #255 math
scoreboard players operation #B_temp HSV /= #1000 math
scoreboard players operation #B RGBA = #B_temp HSV

function ui:a/rgb_to_intrgb

execute store result storage minecraft:rgba HSV.H int 1 run scoreboard players get #H HSV
execute store result storage minecraft:rgba HSV.S int 1 run scoreboard players get #S HSV
execute store result storage minecraft:rgba HSV.V int 1 run scoreboard players get #V HSV

execute store result storage minecraft:rgba RGB.R int 1 run scoreboard players get #R RGBA
execute store result storage minecraft:rgba RGB.G int 1 run scoreboard players get #G RGBA
execute store result storage minecraft:rgba RGB.B int 1 run scoreboard players get #B RGBA