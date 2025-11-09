say Reloaded!



 # チーム関連

  ## チームを追加
   team add red "赤"
   team add purple "紫"
   team add yellow "黄色"
   team add light_blue "水色"
   team add pink "ピンク"
   team add staff "スタッフ"
   team modify red color red
   team modify purple color dark_purple
   team modify yellow color yellow
   team modify light_blue color aqua
   team modify pink color light_purple
   team modify staff color gold
   team modify staff nametagVisibility never

    # スコア関連

  ## 鉄を数える用
   scoreboard objectives add iron_count dummy
   scoreboard players set 24 iron_count 24
  ## あるみなさんのDP読み解く用
   scoreboard objectives add calc dummy
  ## 表示用スコア
   scoreboard objectives add iron_count_view dummy

 # タイマー関連

  ## タイマー用スコア
   scoreboard objectives add timer dummy
   scoreboard players set timerM timer 0
   scoreboard players set timerS timer 0
   scoreboard players set timerH timer 0
   scoreboard players set timertick timer 0
   scoreboard players set 1200 timer 1200
   scoreboard players set 20 timer 20
   scoreboard players set 72000 timer 72000

## タイマー保存用スコア
   scoreboard objectives add timer.red dummy
   scoreboard objectives add timer.purple dummy
   scoreboard objectives add timer.yellow dummy
   scoreboard objectives add timer.light_blue dummy
   scoreboard objectives add timer.pink dummy


