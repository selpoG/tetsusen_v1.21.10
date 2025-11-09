
##今の難易度に応じて変える
## まず難易度をスコアに代入する
 execute store result score difficulty setting run difficulty

## スコア加算
 scoreboard players add difficulty setting 4

## スコアを対応させる
 execute if score difficulty setting matches 4 run difficulty easy
 execute if score difficulty setting matches 5 run difficulty normal
 execute if score difficulty setting matches 6 run difficulty hard
 execute if score difficulty setting matches 7 run difficulty peaceful

##表示を変更
 execute if score difficulty setting matches 4 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=difficulty] text set value {"text": "イージー","color": "black","bold":true}
 execute if score difficulty setting matches 5 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=difficulty] text set value {"text": "ノーマル","color": "black","bold":true}
 execute if score difficulty setting matches 6 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=difficulty] text set value {"text": "ハード","color": "black","bold":true}
 execute if score difficulty setting matches 7 run data modify entity @e[type=text_display,sort=nearest,limit=1,tag=difficulty] text set value {"text": "ピースフル","color": "black","bold":true}

## 
