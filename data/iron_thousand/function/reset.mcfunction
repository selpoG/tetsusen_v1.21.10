## 以下 リセット仕様

# ゲーム管理
## onoff
scoreboard players set game onoff 0

## ゲームルール関連
time set day
gamerule doDaylightCycle false
gamerule doWeatherCycle false
weather clear
gamerule sendCommandFeedback false
gamerule fallDamage true
gamerule doMobSpawning true
difficulty hard

## セッティング保存用スコア
scoreboard players set cleartime setting 1
scoreboard players set difficulty setting 6
scoreboard players set announce setting 1
scoreboard players set orevein setting 1
scoreboard players set night_vision setting 1

## デスカウンター
execute as @a run scoreboard players reset @s deaths

## 鉄原石
execute as @a run scoreboard players reset @s orevein

## タイマー関連
scoreboard players set timerM timer 0
scoreboard players set timerS timer 0
scoreboard players set timerH timer 0
scoreboard players set timertick timer 0
scoreboard players set 1200 timer 1200
scoreboard players set 20 timer 20
scoreboard players set 72000 timer 72000
