
##オンオフを切り替える

scoreboard players add cleartime setting 2

## オフなら0 オンなら１
execute if score cleartime setting matches 2 run scoreboard players set cleartime setting 1
execute if score cleartime setting matches 3 run scoreboard players set cleartime setting 0

##書き換え
execute if score cleartime setting matches 1 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=cleartime] text set value {"text": "表示","color": "black","bold":true}
execute if score cleartime setting matches 0 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=cleartime] text set value {"text": "非表示","color": "black","bold":true}
