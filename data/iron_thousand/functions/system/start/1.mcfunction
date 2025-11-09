
## 看板、ルール板を消す
 #ボタン

 setblock ~ ~ ~19 air
 setblock ~ ~1 ~19 air
 setblock ~ ~ ~-13 air
 setblock ~ ~1 ~-13 air
 setblock ~ ~ ~-5 air
 setblock ~ ~1 ~-5 air
 setblock ~ ~ ~3 air
 setblock ~ ~1 ~3 air
 setblock ~ ~ ~11 air
 setblock ~ ~1 ~11 air
 setblock ~-6 ~ ~24 air
 setblock ~-6 ~1 ~24 air
 setblock ~-6 ~ ~23 air
 #ボタン
  fill ~-1 ~ ~19 ~-1 ~1 ~19 air
 fill ~-1 ~ ~11 ~-1 ~1 ~11 air
 fill ~-1 ~ ~3 ~-1 ~1 ~3 air
 fill ~-1 ~ ~-5 ~-1 ~1 ~-5 air
 fill ~-1 ~ ~-13 ~-1 ~1 ~-13 air



 ## 設定用板
 #岩盤
 fill ~2 ~-1 ~25 ~-6 ~-1 ~28 quartz_block
 #クォーツブロック
 fill ~2 ~ ~25 ~-6 ~6 ~28 air
 #ボタン
 setblock ~-4 ~ ~24 air
 setblock ~-5 ~4 ~24 air
 setblock ~-5 ~3 ~24 air
 setblock ~-5 ~2 ~24 air
 setblock ~-5 ~1 ~24 air
 ## テキストディスプレイをキル
 kill @e[type=text_display,tag=gamerule]



## カウントダウンを実行
schedule function iron_thousand:system/start/countdown/3 20
schedule function iron_thousand:system/start/countdown/2 40
schedule function iron_thousand:system/start/countdown/1 60
schedule function iron_thousand:system/start/countdown/0 80