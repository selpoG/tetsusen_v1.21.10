
  ## 自分がほかのタグ付いてたらNGを出す
   execute if entity @s[tag=red,distance=0..] run tellraw @s [{"text": "[!]","bold":true,"color": "green"},{"text": "既に赤色にエントリー済です"}]
   execute if entity @s[tag=purple,distance=0..] run tellraw @s [{"text": "[!]","bold":true,"color": "green"},{"text": "既に紫色にエントリー済です"}]
   execute if entity @s[tag=yellow,distance=0..] run tellraw @s [{"text": "[!]","bold":true,"color": "green"},{"text": "既に黄色にエントリー済です"}]
   execute if entity @s[tag=light_blue,distance=0..] run tellraw @s [{"text": "[!]","bold":true,"color": "green"},{"text": "既に水色にエントリー済です"}]
   execute if entity @s[tag=pink,distance=0..] run tellraw @s [{"text": "[!]","bold":true,"color": "green"},{"text": "既にピンク色にエントリー済です"}]
   # どれでもなければタグつける
   execute if entity @s[tag=!red,tag=!purple,tag=!yellow,tag=!light_blue,tag=!pink] run tag @s add join

  ## タグ付きの人がいたらNGを出す
  # 一旦自分以外にするために仮タグ
  tag @s add me
   execute if entity @a[tag=!join,tag=!me,tag=red,distance=0..] run tellraw @s [{"text": "[!]","bold":true,"color": "green"},{"text": "赤色の溶鉱炉は既に使用されています"}]
   execute if entity @a[tag=!join,tag=!me,tag=red,distance=0..] run tag @s remove join
   tag @s remove me

   ## 条件を満たしていたらタグつける

  ## タグ付きの人がいなければ以下を実行
   ## チームに入れる
    execute if entity @s[tag=join] run team join red @s
   ## テルロー出す
    execute if entity @s[tag=join] run tellraw @s [{"text": "[!]","bold":true,"color": "green"},{"text": "赤色の溶鉱炉を使用します"}]
   ## 顔の看板を出す
    ### SkullOwner=Steveのplayer_headを召喚
     #execute if entity @s[tag=join] run summon item_display -11 75 -0.5 {item:{id:"minecraft:player_head",tag:{SkullOwner:"Steve"},Count:1b},Rotation:[90.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[10.0f,10.0f,10.0f]},Tags:["player_head","red_player_head"]}
    ### アマスタ召喚
     execute if entity @s[tag=join] run summon armor_stand ~ ~30 ~ {Tags:["amst_for_player_head"]}
    ### アマスタにプレイヤーヘッドを着せる
     execute if entity @s[tag=join] run loot replace entity @e[tag=amst_for_player_head,sort=nearest,limit=1] armor.head loot iron_thousand:entry/player_head
    ### アマスタのSkullOwnerをitem_displayに代入
     execute if entity @s[tag=join] run data merge entity @e[tag=red_player_head,sort=nearest,limit=1,distance=0..,type=item_display] {item:{id:"minecraft:player_head",tag:{SkullOwner:"Steve"},Count:1b}}
     execute if entity @s[tag=join] run data modify entity @e[tag=red_player_head,sort=nearest,limit=1,distance=0..,type=item_display] item.tag.SkullOwner set from entity @e[type=armor_stand,tag=amst_for_player_head,sort=nearest,limit=1,distance=0..] ArmorItems[{id:"minecraft:player_head"}].tag.SkullOwner

   ## 溶鉱炉の上にプレイヤーヘッドを出す
     execute if entity @s[tag=join] at @e[tag=red_player_head,sort=nearest,limit=1,distance=0..,type=item_display] run setblock ~9 ~-8 ~ minecraft:player_head[powered=false,rotation=4]{SkullOwner:Steve}
    ### アマスタのSkullOwnerをplayer_headに代入
     execute if entity @s[tag=join] at @e[tag=red_player_head,sort=nearest,limit=1,distance=0..,type=item_display] run data modify block ~9 ~-8 ~ SkullOwner set from entity @e[type=armor_stand,tag=amst_for_player_head,sort=nearest,limit=1,distance=0..] ArmorItems[{id:"minecraft:player_head"}].tag.SkullOwner

    ### アマスタをキル
     execute if entity @s[tag=join] run kill @e[type=armor_stand,tag=amst_for_player_head,distance=0..]

   ## 最後にタグをつける
    execute if entity @s[tag=join] run tag @s add red
    tag @s remove join