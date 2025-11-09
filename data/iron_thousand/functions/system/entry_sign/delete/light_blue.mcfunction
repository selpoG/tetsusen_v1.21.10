

 # 水色チームから外す

  ## 自分がタグ付きなら
   execute if entity @s[tag=light_blue,distance=0..] run tellraw @s [{"text": "[!]","bold":true,"color": "green"},{"text": "水色の溶鉱炉を開放しました"}]

  ## 以下を実行
   ## チーム外す
   execute if entity @s[tag=light_blue,distance=0..] run team leave @s
   ## 顔の看板を出す
    ### item_displayを見た目上キル
     execute if entity @s[tag=light_blue,distance=0..] run data modify entity @e[tag=light_blue_player_head,sort=nearest,limit=1,distance=0..,type=item_display] item set value 1
   ## 溶鉱炉の上のプレイヤーヘッドをキル
     execute if entity @s[tag=light_blue,distance=0..] at @e[tag=light_blue_player_head,sort=nearest,limit=1,distance=0..,type=item_display] run setblock ~9 ~-8 ~ air

   ## 最後にタグをはずす
    execute if entity @s[tag=light_blue,distance=0..] run tag @s remove light_blue
