

 ##タイマー関連
 function iron_thousand:game/timer/tick

##特定スコアのプレイヤーをアナウンス
#500個
execute as @a[scores={iron_count_view=500..},tag=!500] run function iron_thousand:game/announce/500

#1000個
execute if entity @a[tag=red,scores={iron_count_view=1000},tag=!goal] run function iron_thousand:game/announce/1000/red
execute if entity @a[tag=purple,scores={iron_count_view=1000},tag=!goal] run function iron_thousand:game/announce/1000/purple
execute if entity @a[tag=yellow,scores={iron_count_view=1000},tag=!goal] run function iron_thousand:game/announce/1000/yellow
execute if entity @a[tag=light_blue,scores={iron_count_view=1000},tag=!goal] run function iron_thousand:game/announce/1000/light_blue
execute if entity @a[tag=pink,scores={iron_count_view=1000},tag=!goal] run function iron_thousand:game/announce/1000/pink

## 鉱脈アナウンス
execute if score orevein setting matches 1 run function iron_thousand:game/orevein/tick