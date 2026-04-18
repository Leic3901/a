scoreboard objectives add RGBA dummy
scoreboard players set #R RGBA 0
scoreboard players set #G RGBA 0
scoreboard players set #B RGBA 0
scoreboard players set #A RGBA 0
scoreboard players set #index RGBA 5

scoreboard objectives add HSV dummy
scoreboard players set #H HSV 0
scoreboard players set #S HSV 0
scoreboard players add #V HSV 0

scoreboard objectives add math dummy
scoreboard players set #2^24 math 16777216
scoreboard players set #2^20 math 1048576
scoreboard players set #2^16 math 65536
scoreboard players set #2^12 math 4096
scoreboard players set #2^8 math 256
scoreboard players set #2^4 math 16
scoreboard players set #1000 math 1000
scoreboard players set #255 math 255
scoreboard players set #60 math 60
scoreboard players set #16 math 16
scoreboard players set #15 math 15
scoreboard players set #14 math 14
scoreboard players set #13 math 13
scoreboard players set #12 math 12
scoreboard players set #11 math 11
scoreboard players set #10 math 10
scoreboard players set #9 math 9
scoreboard players set #8 math 8
scoreboard players set #7 math 7
scoreboard players set #6 math 6
scoreboard players set #5 math 5
scoreboard players set #4 math 4
scoreboard players set #3 math 3
scoreboard players set #2 math 2
scoreboard players set #1 math 1



data modify storage minecraft:rgba R set value 0
data modify storage minecraft:rgba G set value 0
data modify storage minecraft:rgba B set value 0
data modify storage minecraft:rgba A set value 0
data modify storage minecraft:rgba intRGB set value 0
data modify storage minecraft:rgba index set value 5

