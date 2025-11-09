

 # 残りスロットがなければ終了する
  execute unless data storage iron_thousand: IronCountainer.Items[0] run return 0

 # 計算用スコアを初期化
  scoreboard players set slot calc 0


 # ストレージから1スロットずつ鉄の数を加算する


    ## 一旦別のストレージに移す
     data modify storage iron_thousand: IronCountainer.Slot set from storage iron_thousand: IronCountainer.Items[0]

    ## 鉄の数を数えて加算する
     execute store result score slot calc run data get storage iron_thousand: IronCountainer.Slot{id:"minecraft:iron_ingot"}.Count
     scoreboard players operation result calc += slot calc

 # 加算し終わったスロットのデータは消去
  data remove storage iron_thousand: IronCountainer.Items[0]

 function iron_thousand:system/iron_count/calc/loop