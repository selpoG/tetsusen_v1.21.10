
##オンオフを切り替える

scoreboard players add announce setting 2

## 自分だけなら0 全員なら１
execute if score announce setting matches 2 run scoreboard players set announce setting 1
execute if score announce setting matches 3 run scoreboard players set announce setting 0

##書き換え
execute if score announce setting matches 1 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=announce] text set value '{"text": "全員","color": "black","bold":true}'
execute if score announce setting matches 0 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=announce] text set value '{"text": "最初の1人","color": "black","bold":true}'