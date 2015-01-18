require File.expand_path(File.dirname(__FILE__) + '/../triangle.rb')

describe Triangle do
  specify { expect(Triangle.detect_shape_for(1,1,1)).to eq Triangle::EQUILATERAL }
end
