## 残りスロットがなければ終了する
execute unless data storage iron_thousand:iron_counter items[0] run return 0

## 計算用スコアを初期化
scoreboard players set slot calc 0

## ストレージから1スロットずつ鉄の数を加算する
data modify storage iron_thousand:iron_counter slot set from storage iron_thousand:iron_counter items[0]
execute if data storage iron_thousand:iron_counter slot{id:"minecraft:iron_ingot"} run execute store result score slot calc run data get storage iron_thousand:iron_counter slot.Count
execute if score slot calc matches 1.. run scoreboard players operation result calc += slot calc

## 加算し終わったスロットのデータは消去
data remove storage iron_thousand:iron_counter items[0]
data remove storage iron_thousand:iron_counter slot

function iron_thousand:system/iron_count/calc/loop
