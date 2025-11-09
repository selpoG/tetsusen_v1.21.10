## 計算する 
scoreboard players operation timerM timer = timertick timer
scoreboard players operation timerH timer = timertick timer
scoreboard players operation timerS timer = timertick timer

scoreboard players operation timerH timer /= 72000 timer
scoreboard players operation timerM timer %= 72000 timer
scoreboard players operation timerM timer /= 1200 timer
scoreboard players operation timerS timer %= 1200 timer
scoreboard players operation timerS timer /= 20 timer

# 000
execute if score timerH timer matches ..0 if score timerS timer matches ..9 run tellraw @a [{"text": "[クリアタイム]  ","bold": true,"color": "white"},{"score":{"name": "timerM","objective": "timer"}},{"text": "分0"},{"score":{"name": "timerS","objective": "timer"}},{"text": "秒"}]

# 001
execute if score timerH timer matches ..0 if score timerS timer matches 10.. run tellraw @a [{"text": "[クリアタイム]  ","bold": true,"color": "white"},{"score":{"name": "timerM","objective": "timer"}},{"text": "分"},{"score":{"name": "timerS","objective": "timer"}},{"text": "秒"}]

# 100
execute if score timerH timer matches 1.. if score timerM timer matches ..9 if score timerS timer matches ..9 run tellraw @a [{"text": "[クリアタイム]  ","bold": true,"color": "white"},{"score":{"name": "timerH","objective": "timer"}},{"text": "時間0"},{"score":{"name": "timerM","objective": "timer"}},{"text": "分0"},{"score":{"name": "timerS","objective": "timer"}},{"text": "秒"}]

# 101
execute if score timerH timer matches 1.. if score timerM timer matches ..9 if score timerS timer matches 10.. run tellraw @a [{"text": "[クリアタイム]  ","bold": true,"color": "white"},{"score":{"name": "timerH","objective": "timer"}},{"text": "時間0"},{"score":{"name": "timerM","objective": "timer"}},{"text": "分"},{"score":{"name": "timerS","objective": "timer"}},{"text": "秒"}]

# 110
execute if score timerH timer matches 1.. if score timerM timer matches 10.. if score timerS timer matches ..9 run tellraw @a [{"text": "[クリアタイム]  ","bold": true,"color": "white"},{"score":{"name": "timerH","objective": "timer"}},{"text": "時間"},{"score":{"name": "timerM","objective": "timer"}},{"text": "分0"},{"score":{"name": "timerS","objective": "timer"}},{"text": "秒"}]

# 111
execute if score timerH timer matches 1.. if score timerM timer matches 10.. if score timerS timer matches 10.. run tellraw @a [{"text": "[クリアタイム]  ","bold": true,"color": "white"},{"score":{"name": "timerH","objective": "timer"}},{"text": "時間"},{"score":{"name": "timerM","objective": "timer"}},{"text": "分"},{"score":{"name": "timerS","objective": "timer"}},{"text": "秒"}]