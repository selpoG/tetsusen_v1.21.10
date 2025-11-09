


## 全員をアナウンスする場合
## アナウンスする
execute if score announce setting matches 1 run tellraw @a [{"text": "[!]","color": "green","bold": true},{"selector":"@s"},{"text": "が鉄500個を焼き上げました","color": "green","bold": true}]
## タグつける
execute if score announce setting matches 1 run tag @s add 500


## 最初の1人のみをアナウンスする場合
## アナウンスする
execute if score announce setting matches 0 run tellraw @a [{"text": "[!]最初のひとりが鉄500個を焼き上げました","color": "green","bold": true}]
## タグつける
execute if score announce setting matches 0 run tag @a add 500
