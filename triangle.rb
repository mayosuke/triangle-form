class Triangle
  EQUILATERAL = 1 # 正三角形
  ISOSCELES = 2 # 二等辺三角形
  SCALENE = 3 # 不等辺三角形
  NOT_TRIANGLE = 4 # 三角形でない

  def self.detect_shape_for(edege1, edge2, edge3)
    EQUILATERAL
  end
end
