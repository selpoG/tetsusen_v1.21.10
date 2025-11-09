
##タイトルと音
title @a title "- START -"
execute as @a at @s run playsound entity.player.levelup master @s


##ゲームを開始
scoreboard players set game onoff 1

##各スコアを0に調整
gamerule doDaylightCycle true