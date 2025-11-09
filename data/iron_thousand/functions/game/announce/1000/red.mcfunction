
## アナウンスする
title @a title [{"selector": "@a[tag=red]","color": "red","bold": true}]
title @a subtitle [{"text":"鉄千完了!!!"}]
tellraw @a [{"selector": "@a[tag=red]","bold": true,"color": "red"},{"text": " 鉄千完了!!!"}]

##タグつける
tag @a[tag=red] add goal

## クリアタイム出す場合は出す
execute if score cleartime setting matches 1 run function iron_thousand:game/announce/1000/cleartime/view

## ビーコン出す
execute at @e[type=marker,tag=iron_count] run setblock ~-20 ~-1 ~16 red_stained_glass