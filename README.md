# spike-lightsail

# ディレクトリ説明
## dataディレクトリ
lightsail作成にあたり必要な情報をまとめるディレクトリ

### data/blueprints.json
lightsailはblueprintというインスタンスのAMIみたいなのを指定して作成する。  
そのAMIみたいなのの一覧は ```aws lightsail get-blueprints``` コマンドで取得できる。  
取得結果をjson形式で保存したファイル

### data/bundles.json
lightsailはbundlesというインスタンスのCPU/Memory/Strageの設定と紐づく使用プランを指定して作成する。  
その使用プランの一覧は ```aws lightsail get-bundles``` コマンドで取得できる。  
取得結果をjson形式で保存したファイル