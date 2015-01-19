class Triangle
  EQUILATERAL = 1 # 正三角形
  ISOSCELES = 2 # 二等辺三角形
  SCALENE = 3 # 不等辺三角形
  NOT_TRIANGLE = 4 # 三角形でない

  def self.detect_shape_for(edge1, edge2, edge3)
    if Triangle.is_triangle(edge1, edge2, edge3)
      if Triangle.is_equilateral(edge1, edge2, edge3)
        EQUILATERAL
      elsif Triangle.is_isosceles(edge1, edge2, edge3)
        ISOSCELES
      else
        SCALENE
      end
    else
      NOT_TRIANGLE
    end
  end

  def self.is_triangle(edge1, edge2, edge3)
    if (edge1 < (edge2 + edge3)) && (edge2 < (edge1 + edge3)) && (edge3 < (edge1 + edge2))
      true
    else
      false
    end
  end

  def self.is_equilateral(edge1, edge2, edge3)
    if (edge1 == edge2) && (edge2 == edge3)
      true
    else
      false
    end
  end

  def self.is_isosceles(edge1, edge2, edge3)
    if (edge1 == edge2) || (edge2 == edge3) || (edge3 == edge1)
      true
    else
      false
    end
  end
end
