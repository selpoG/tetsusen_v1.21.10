
## アナウンスする
title @a title [{"selector": "@a[tag=light_blue]","color": "aqua","bold": true}]
title @a subtitle [{"text":"鉄千完了!!!"}]
tellraw @a [{"selector": "@a[tag=light_blue]","bold": true,"color": "aqua"},{"text": " 鉄千完了!!!"}]

##タグつける
tag @a[tag=light_blue] add goal

## クリアタイム出す場合は出す
execute if score cleartime setting matches 1 run function iron_thousand:game/announce/1000/cleartime/view

## ビーコン出す
execute at @e[type=marker,tag=iron_count] run setblock ~-20 ~-1 ~-8 light_blue_stained_glass