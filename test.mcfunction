function ui:a/scoreboard
function ui:a/random
function ui:a/macro
function ui:a/idk with storage minecraft:rgba






# summon text_display ~ ~ ~ {text:{text:a,color:"red",shadow_color:]},background:false}

# data get entity @e[type=text_display,limit=1,sort=nearest] text.color
# execute store result storage minecraft:color color int 1 run data get entity @e[type=text_display,limit=1,sort=nearest] text.color




# 2*(b)+2^8(g)+2^16(r)+2^24(a)=int(rgba)





# if int rgba <= 0 run int(rgba)=-int(rgba)

# int(rgba) % 2^24 = int(rgb)

# int(rgb) % 2^16 = int gb

# int(gb) % 2^8 = int g

# int(b) % 2 = int b