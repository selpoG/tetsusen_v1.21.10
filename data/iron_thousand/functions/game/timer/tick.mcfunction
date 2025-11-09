

## 1加算
scoreboard players add timertick timer 1

## 経過時間を計算
function iron_thousand:game/timer/calc



## 経過時間に応じてアナウンスをする
execute if score timertick timer matches 36000 run tellraw @a [{"text": "30分経過","color": "green"}]
execute if score timertick timer matches 72000 run tellraw @a [{"text": "60分経過","color": "green"}]
execute if score timertick timer matches 108000 run tellraw @a [{"text": "90分経過","color": "green"}]
execute if score timertick timer matches 144000 run tellraw @a [{"text": "120分経過","color": "green"}]
execute if score timertick timer matches 180000 run tellraw @a [{"text": "150分経過","color": "green"}]
execute if score timertick timer matches 216000 run tellraw @a [{"text": "180分経過","color": "green"}]
execute if score timertick timer matches 252000 run tellraw @a [{"text": "210分経過","color": "green"}]
execute if score timertick timer matches 288000 run tellraw @a [{"text": "240分経過","color": "green"}]
execute if score timertick timer matches 324000 run tellraw @a [{"text": "270分経過","color": "green"}]
execute if score timertick timer matches 360000 run tellraw @a [{"text": "300分経過","color": "green"}]