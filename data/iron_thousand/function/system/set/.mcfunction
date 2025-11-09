

## 過去のものを全部消す
kill @e[type=text_display]
kill @e[type=item_display]
kill @e[type=marker]

## タグなどを外す
team leave @a
tag @a remove 500
tag @a remove goal
tag @a remove red
tag @a remove purple
tag @a remove yellow
tag @a remove light_blue
tag @a remove pink

## リス地移動
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~

## 以下のルールに沿って地形を設定

execute at @s align xyz run summon marker ~ ~ ~ {Tags:[iron_count]}
execute at @s align xyz run function iron_thousand:system/2set/1