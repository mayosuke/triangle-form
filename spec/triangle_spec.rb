# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/../triangle.rb')

describe Triangle do
  # a 3辺の長さがすべて0より大きい
  # b 3辺の長さがそれぞれ他の2辺の長さの合計より小さい

  # aとbを満たしてかつ3辺の長さがすべて等しくない場合は不等辺三角形
  specify { expect(`ruby ./triangle.rb 2, 3, 4`).to match "不等辺三角形ですね！"}

  # aとbを満たしてかつ2辺の長さが等しい場合は二等辺三角形
  specify { expect(`ruby ./triangle.rb 2, 2, 1`).to match "二等辺三角形ですね！"}

  # aとb満たしてかつ三辺の長さがすべて等しい場合は正三角形
  specify { expect(`ruby ./triangle.rb 1, 1, 1`).to match "正三角形ですね！"}
  
  # 1辺の長さが他の2辺の長さの合計以上の場合(bを満たさない)三角形ではない
  specify { expect(`ruby ./triangle.rb 1, 2, 3`).to match "三角形じゃないです＞＜"}

  # 3辺のうち1辺でも長さが0以下の場合(aを満たさない)は三角形ではない
  specify { expect(`ruby ./triangle.rb 1, 2, 0`).to match "三角形じゃないです＞＜"}

  # 与えられた辺が3辺より少ない場合は三角形ではない
  specify { expect(`ruby ./triangle.rb 1, 2`).to match "三角形じゃないです＞＜"}

  # 与えられた辺が3辺より多い場合は三角形ではない
  specify { expect(`ruby ./triangle.rb 1, 2, 3, 4`).to match "三角形じゃないです＞＜"}
end

