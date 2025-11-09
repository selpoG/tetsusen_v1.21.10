

## 開始時のルールを書き出す
tellraw @a [{"text": " "}]
tellraw @a [{"text": "-------------------------------------"}]
tellraw @a [{"text": "   このルールで鉄千を開始します","bold": true,"color": "yellow"}]
tellraw @a [{"text": " "}]

## 難易度
 execute if score difficulty setting matches 4 run tellraw @a [{"text": "         難易度     :   ","bold": true,"color": "white"},{"text": "イージー"}] 
 execute if score difficulty setting matches 5 run tellraw @a [{"text": "         難易度     :   ","bold": true,"color": "white"},{"text": "ノーマル"}] 
 execute if score difficulty setting matches 6 run tellraw @a [{"text": "         難易度     :   ","bold": true,"color": "white"},{"text": "ハード"}] 
 execute if score difficulty setting matches 7 run tellraw @a [{"text": "         難易度     :   ","bold": true,"color": "white"},{"text": "ピースフル"}] 

## クリアタイム
 execute if score cleartime setting matches 1 run tellraw @a [{"text": "      クリアタイム  :   ","bold": true,"color": "white"},{"text":"表示","color":"white","bold":true}]
 execute if score cleartime setting matches 0 run tellraw @a [{"text": "      クリアタイム  :   ","bold": true,"color": "white"},{"text":"非表示","color":"white","bold":true}]

## 折り返し
 execute if score announce setting matches 1 run tellraw @a [{"text": "        鉄500個    :   ","bold": true,"color": "white"},{"text":"全員","color":"white","bold":true}]
 execute if score announce setting matches 0 run tellraw @a [{"text": "        鉄500個    :   ","bold": true,"color": "white"},{"text":"最初の1人","color":"white","bold":true}]

## 鉱脈
 execute if score orevein setting matches 1 run tellraw @a [{"text": "     鉱脈アナウンス :   ","bold": true,"color": "white"},{"text":"する","color":"white","bold":true}]
 execute if score orevein setting matches 0 run tellraw @a [{"text": "     鉱脈アナウンス :   ","bold": true,"color": "white"},{"text":"しない","color":"white","bold":true}]

## 暗視
 execute if score night_vision setting matches 1 run tellraw @a [{"text": "         暗視       :   ","bold": true,"color": "white"},{"text":"オン","color":"white","bold":true}]
 execute if score night_vision setting matches 0 run tellraw @a [{"text": "         暗視       :   ","bold": true,"color": "white"},{"text":"オフ","color":"white","bold":true}]

tellraw @a [{"text": " "}]

tellraw @a [{"text": "       "},{"text": "[ 開始 ]","bold": true,"color": "yellow","clickEvent": {"action": "run_command","value": "/execute at @e[type=marker,tag=iron_count] run function iron_thousand:system/start/1"},"hoverEvent": {"action":"show_text","value": "左クリックで鉄千を開始します"}},{"text": "       "},{"text": "[ やり直す ]","bold": true,"color": "yellow","clickEvent": {"action": "run_command","value": "/function iron_thousand:system/start/delete"},"hoverEvent": {"action":"show_text","value": "左クリックで鉄千のルールを設定し直します"}}]

tellraw @a [{"text": "-------------------------------------"}]


