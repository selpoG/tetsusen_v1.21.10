## データパックのリロード処理

# 初期化されていない場合のみセットアップを実行
execute unless data storage iron_thousand:state {initialized:1b} run function iron_thousand:system/setup

# リロード完了を通知
tellraw @a [{"text":"[鉄千] データパックをリロードしました","color":"gold"}]
