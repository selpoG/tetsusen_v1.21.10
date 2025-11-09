## 全員の鉄原石をカウント
execute as @a[tag=!goal,scores={orevein=1..}] run tellraw @a [{"selector":"@s"},{"text":"が鉄鉱脈にいるようです","bold":true}]
execute as @a[tag=!goal,scores={orevein=1..}] run scoreboard players reset @s orevein
