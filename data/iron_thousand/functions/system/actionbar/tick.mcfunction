

## 計算する
 ## 鉄の数チェック
execute if entity @a[tag=red,tag=!goal] run function iron_thousand:system/iron_count/red
execute if entity @a[tag=purple,tag=!goal] run function iron_thousand:system/iron_count/purple
execute if entity @a[tag=yellow,tag=!goal] run function iron_thousand:system/iron_count/yellow
execute if entity @a[tag=light_blue,tag=!goal] run function iron_thousand:system/iron_count/light_blue
execute if entity @a[tag=pink,tag=!goal] run function iron_thousand:system/iron_count/pink



## 表示する 
execute as @a[tag=red,limit=1,distance=0..] run title @s actionbar [{"text":"現在の鉄 : "},{"score":{"name":"@s","objective": "iron_count_view"} },{"text": "個"}]
execute as @a[tag=purple,limit=1,distance=0..] run title @s actionbar [{"text":"現在の鉄 : "},{"score":{"name":"@s","objective": "iron_count_view"} },{"text": "個"}]
execute as @a[tag=yellow,limit=1,distance=0..] run title @s actionbar [{"text":"現在の鉄 : "},{"score":{"name":"@s","objective": "iron_count_view"} },{"text": "個"}]
execute as @a[tag=light_blue,limit=1,distance=0..] run title @s actionbar [{"text":"現在の鉄 : "},{"score":{"name":"@s","objective": "iron_count_view"} },{"text": "個"}]
execute as @a[tag=pink,limit=1,distance=0..] run title @s actionbar [{"text":"現在の鉄 : "},{"score":{"name":"@s","objective": "iron_count_view"} },{"text": "個"}]