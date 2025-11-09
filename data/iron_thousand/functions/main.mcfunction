
  ##常時実行

    ## タグ付きのプレイヤーのactionbarに鉄の数を表示
      function iron_thousand:system/actionbar/tick


    ## ゲーム中に実行
    execute if score game onoff matches 1 run function iron_thousand:game/tick

    ## 暗視オン時に実行
    execute if score night_vision setting matches 1 run effect give @a night_vision infinite 1 true
    #execute if score night_vision setting matches 1 as @a[nbt=!{ActiveEffects:[{Id:"minecraft:night_vision"}]}] run function iron_thousand:system/gamerule/night_vision/give