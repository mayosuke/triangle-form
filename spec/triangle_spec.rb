# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/../triangle.rb')

describe Triangle do
  # 三角形の条件：
  ## a 3辺の長さがすべて0より大きい
  ## b 3辺の長さがそれぞれ他の2辺の長さの合計より小さい

  # aとb満たしてかつ三辺の長さがすべて等しい場合は正三角形
  specify { expect(`ruby ./triangle.rb 1, 1, 1`).to match "正三角形ですね！"}
  
  # aとbを満たしてかつ2辺の長さが等しい場合は二等辺三角形
  ## 等しい辺の長さを1とする
  specify { expect(`ruby ./triangle.rb 2, 2, 1`).to match "二等辺三角形ですね！"}
  specify { expect(`ruby ./triangle.rb 2, 1, 2`).to match "二等辺三角形ですね！"}
  specify { expect(`ruby ./triangle.rb 1, 2, 2`).to match "二等辺三角形ですね！"}

  # aとbを満たしてかつ3辺の長さがすべて等しくない場合は不等辺三角形
  specify { expect(`ruby ./triangle.rb 2, 3, 4`).to match "不等辺三角形ですね！"}
  specify { expect(`ruby ./triangle.rb 2, 4, 3`).to match "不等辺三角形ですね！"}
  specify { expect(`ruby ./triangle.rb 3, 2, 4`).to match "不等辺三角形ですね！"}
  specify { expect(`ruby ./triangle.rb 3, 4, 2`).to match "不等辺三角形ですね！"}
  specify { expect(`ruby ./triangle.rb 4, 2, 3`).to match "不等辺三角形ですね！"}
  specify { expect(`ruby ./triangle.rb 4, 3, 2`).to match "不等辺三角形ですね！"}

  # aのみ満たされてもbを満たさないければ三角形ではない
  ## 三辺の長さがすべて異なる場合
  specify { expect(`ruby ./triangle.rb 1, 2, 3`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 1, 3, 2`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 2, 1, 3`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 2, 3, 1`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 3, 1, 2`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 3, 2, 1`).to match "三角形じゃないです＞＜"}
  ## 二辺の長さが等しい場合
  specify { expect(`ruby ./triangle.rb 1, 1, 2`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 1, 2, 1`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 2, 1, 1`).to match "三角形じゃないです＞＜"}

  # 3辺のうち1辺でも長さが0以下の場合(aを満たさない)は三角形ではない
  specify { expect(`ruby ./triangle.rb 1, 1, 0`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 1, 0, 1`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 0, 1, 1`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 1, 1, -1`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb 1, -1, 1`).to match "三角形じゃないです＞＜"}
  specify { expect(`ruby ./triangle.rb -1, 1, 1`).to match "三角形じゃないです＞＜"}

  # 与えられた辺が3辺より少ない場合は三角形ではない
  specify { expect(`ruby ./triangle.rb 1, 2`).to match "三角形じゃないです＞＜"}

  # 与えられた辺が3辺より多い場合は三角形ではない
  specify { expect(`ruby ./triangle.rb 1, 2, 3, 4`).to match "三角形じゃないです＞＜"}
end

