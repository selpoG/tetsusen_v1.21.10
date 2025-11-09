  ##以下 リセット仕様

 #ゲーム管理
  ##onoff
   scoreboard objectives add onoff dummy
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
   scoreboard objectives add setting dummy
   scoreboard players set cleartime setting 1
   scoreboard players set difficulty setting 6
   scoreboard players set announce setting 1
   scoreboard players set orevein setting 1
   scoreboard players set night_vision setting 1
    ## デスカウンター
    scoreboard objectives add death deathCount
    scoreboard players set @a death 0

   ##鉄原石
   scoreboard objectives add orevein mined:raw_iron_block
   scoreboard players set @a orevein 0