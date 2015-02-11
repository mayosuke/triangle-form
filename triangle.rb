# coding: utf-8

class Triangle
  EQUILATERAL = "正三角形ですね！"
  ISOSCELES = "二等辺三角形ですね！"
  SCALENE = "不等辺三角形ですね！"
  NOT_TRIANGLE = "三角形じゃないです＞＜"

  def self.detect_shape_for(argv)
    edges = normalize_arguments(argv)
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

  def self.integer_string?(str)
    Integer(str)
    true
  rescue ArgumentError
    false
  end

  def self.valid_arguments?(argv)
    return false unless argv.length == 3
    argv.each do |a|
      return false unless integer_string?(a.delete(','))
    end
    true
  end

  def self.normalize_arguments(argv)
    return nil unless valid_arguments?(argv)
    argv.map{|a| a.delete(',')}
  end
end

if __FILE__ == $0
  puts Triangle.detect_shape_for(ARGV)
end

