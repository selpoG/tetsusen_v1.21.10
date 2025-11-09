
##オンオフを切り替える

scoreboard players add orevein setting 2

## しないなら0 するなら１
execute if score orevein setting matches 2 run scoreboard players set orevein setting 1
execute if score orevein setting matches 3 run scoreboard players set orevein setting 0

##書き換え
execute if score orevein setting matches 1 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=orevein] text set value {"text": "する","color": "black","bold":true}
execute if score orevein setting matches 0 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=orevein] text set value {"text": "しない","color": "black","bold":true}
