# coding: utf-8

class Triangle
  EQUILATERAL = "正三角形ですね！"
  ISOSCELES = "二等辺三角形ですね！"
  SCALENE = "不等辺三角形ですね！"
  NOT_TRIANGLE = "三角形じゃないです＞＜"

  def self.detect_shape_for(argv)
    edges = get_edges_from_arguments(argv)
    if Triangle.is_triangle(edges)
      if Triangle.is_equilateral(edges)
        EQUILATERAL
      elsif Triangle.is_isosceles(edges)
        ISOSCELES
      else
        SCALENE
      end
    else
      NOT_TRIANGLE
    end
  end

  def self.is_triangle(edges)
    return false if edges == nil
    if (edges[0] < (edges[1] + edges[2])) &&
            (edges[1] < (edges[0] + edges[2])) &&
            (edges[2] < (edges[0] + edges[1]))
      true
    else
      false
    end
  end

  def self.is_equilateral(edges)
    if (edges[0] == edges[1]) && (edges[1] == edges[2])
      true
    else
      false
    end
  end

  def self.is_isosceles(edges)
    if (edges[0] == edges[1]) || (edges[1] == edges[2]) || (edges[2] == edges[0])
      true
    else
      false
    end
  end

  def self.get_edges_from_arguments(argv)
    return nil unless argv.length == 3
    argv.map{|a| Float(a.delete(','))}
  rescue ArgumentError
    nil
  end
end

if __FILE__ == $0
  puts Triangle.detect_shape_for(ARGV)
end

