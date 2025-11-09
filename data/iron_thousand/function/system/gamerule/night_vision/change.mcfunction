##オンオフを切り替える

scoreboard players add night_vision setting 2

## しないなら0 するなら１
execute if score night_vision setting matches 2 run scoreboard players set night_vision setting 1
execute if score night_vision setting matches 3 run scoreboard players set night_vision setting 0

##書き換え
execute if score night_vision setting matches 1 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=night_vision] text set value {"text": "オン","color": "black","bold":true}
execute if score night_vision setting matches 0 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=night_vision] text set value {"text": "オフ","color": "black","bold":true}

## デスカウント0
execute as @a run scoreboard players reset @s deaths

##効果切り替え
execute if score night_vision setting matches 1 run effect give @a night_vision infinite 1 true
execute if score night_vision setting matches 0 run effect clear @a night_vision 
