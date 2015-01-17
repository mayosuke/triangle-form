# 三角形の形を求める

## 問題

以下のように、与えられた三角形の3辺の長さから、三角形の形を表示するプログラムを作成してください。

````
$ ruby triangle.rb 2, 3, 4
不等辺三角形ですね！

$ ruby triangle.rb 2, 2, 1
二等辺三角形ですね！

$ ruby triangle.rb 1, 1, 1
正三角形ですね！

$ ruby triangle.rb 1, 2, 3
三角形じゃないです＞＜
````

## 参考資料

この問題のテストを作成するにあたっては、「同値分割」と「境界値分析」というテクニックを使うことで、うまく不具合になりそうな値を見つけることができます。これらの言葉を知らない人は、以下のリンクに示すページをご覧ください。

- [ソフトウェアテスト基本テクニック 第4回 ブラックボックステスト](http://gihyo.jp/dev/serial/01/tech_station/0004)
- [試験項目作成の基本、同値分割と境界値分析](http://acro-engineer.hatenablog.com/entry/20121207)

## ゴール

- 問題を満足させるtriangle.rbを作成してください。
- triangle.rbがきちんと動いているか確かめるため、RSpecによるテストをtriangle_spec.rbとして作成してください。

## テストの実行方法

````
bundle install
bundle exec rspec
````
