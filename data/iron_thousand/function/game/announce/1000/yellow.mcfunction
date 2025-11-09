
## アナウンスする
title @a title [{"selector": "@a[tag=yellow]","color": "yellow","bold": true}]
title @a subtitle [{"text":"鉄千完了!!!"}]
tellraw @a [{"selector": "@a[tag=yellow]","bold": true,"color": "yellow"},{"text": " 鉄千完了!!!"}]

##タグつける
tag @a[tag=yellow] add goal

## クリアタイム出す場合は出す
execute if score cleartime setting matches 1 run function iron_thousand:game/announce/1000/cleartime/view

## ビーコン出す
execute at @e[type=marker,tag=iron_count] run setblock ~-20 ~-1 ~ yellow_stained_glass