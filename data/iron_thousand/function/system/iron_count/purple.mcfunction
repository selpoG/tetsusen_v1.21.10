## 合計値を初期化
scoreboard players set @a[tag=purple] iron_count 0

## 計算用ストレージも初期化する
data modify storage iron_thousand:iron_counter items set value []

## 溶鉱炉からデータを取ってくる
execute at @e[type=marker,tag=iron_count,limit=1,distance=0..] positioned ~-4 ~ ~8 run data modify storage iron_thousand:iron_counter items append from block ~ ~ ~ Items[]

## 鉄を数える 鉄の数は result calc に代入
function iron_thousand:system/iron_count/calc/

## スコアを加算
scoreboard players operation @a[tag=purple] iron_count = result calc
scoreboard players operation @a[tag=purple] iron_count -= 24 iron_count

## 表示用スコアに代入する
scoreboard players operation @a[tag=purple] iron_count_view = @a[tag=purple] iron_count
