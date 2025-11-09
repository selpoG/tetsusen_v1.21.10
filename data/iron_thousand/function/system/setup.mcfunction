## 初期化処理 (初回のみ)

# コマンド出力を抑制
gamerule sendCommandFeedback false

## 新しいチームを登録
team add it_red {"text":"赤"}
team add it_purple {"text":"紫"}
team add it_yellow {"text":"黄色"}
team add it_light_blue {"text":"水色"}
team add it_pink {"text":"ピンク"}
team add it_staff {"text":"スタッフ"}
team modify it_red color red
team modify it_purple color dark_purple
team modify it_yellow color yellow
team modify it_light_blue color aqua
team modify it_pink color light_purple
team modify it_staff color gold
team modify it_staff nametagVisibility never

## 旧チームから移行
execute as @a[team=red] run team join it_red @s
execute as @a[team=purple] run team join it_purple @s
execute as @a[team=yellow] run team join it_yellow @s
execute as @a[team=light_blue] run team join it_light_blue @s
execute as @a[team=pink] run team join it_pink @s
execute as @a[team=staff] run team join it_staff @s

## 旧チームを削除
data remove storage iron_thousand:state team_exists
data modify storage iron_thousand:state team_exists set value 0
execute store success storage iron_thousand:state team_exists int 1 run team list red
execute if data storage iron_thousand:state {team_exists:1} run team remove red
data modify storage iron_thousand:state team_exists set value 0
execute store success storage iron_thousand:state team_exists int 1 run team list purple
execute if data storage iron_thousand:state {team_exists:1} run team remove purple
data modify storage iron_thousand:state team_exists set value 0
execute store success storage iron_thousand:state team_exists int 1 run team list yellow
execute if data storage iron_thousand:state {team_exists:1} run team remove yellow
data modify storage iron_thousand:state team_exists set value 0
execute store success storage iron_thousand:state team_exists int 1 run team list light_blue
execute if data storage iron_thousand:state {team_exists:1} run team remove light_blue
data modify storage iron_thousand:state team_exists set value 0
execute store success storage iron_thousand:state team_exists int 1 run team list pink
execute if data storage iron_thousand:state {team_exists:1} run team remove pink
data modify storage iron_thousand:state team_exists set value 0
execute store success storage iron_thousand:state team_exists int 1 run team list staff
execute if data storage iron_thousand:state {team_exists:1} run team remove staff
data remove storage iron_thousand:state team_exists

## スコアボードを作成
scoreboard objectives add iron_count dummy
scoreboard objectives add calc dummy
scoreboard objectives add iron_count_view dummy
scoreboard objectives add timer dummy
scoreboard objectives add timer.red dummy
scoreboard objectives add timer.purple dummy
scoreboard objectives add timer.yellow dummy
scoreboard objectives add timer.light_blue dummy
scoreboard objectives add timer.pink dummy
scoreboard objectives add onoff dummy
scoreboard objectives add setting dummy
scoreboard objectives add deaths minecraft.custom:minecraft.deaths
scoreboard objectives add orevein minecraft.mined:minecraft:raw_iron_block

## 定数を設定
scoreboard players set 24 iron_count 24

## 初期化済みフラグ
data modify storage iron_thousand:state initialized set value 1b
