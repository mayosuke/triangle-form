require File.expand_path(File.dirname(__FILE__) + '/../triangle.rb')

describe Triangle do
  specify { expect(Triangle.detect_shape_for(1,1,1)).to eq Triangle::EQUILATERAL }
  specify { expect(Triangle.detect_shape_for(3,3,3)).to eq Triangle::EQUILATERAL }

  specify { expect(Triangle.detect_shape_for(2,2,1)).to eq Triangle::ISOSCELES }
  specify { expect(Triangle.detect_shape_for(2,1,2)).to eq Triangle::ISOSCELES }
  specify { expect(Triangle.detect_shape_for(1,2,2)).to eq Triangle::ISOSCELES }

  specify { expect(Triangle.detect_shape_for(2,3,4)).to eq Triangle::SCALENE }
  specify { expect(Triangle.detect_shape_for(4,3,2)).to eq Triangle::SCALENE }
  specify { expect(Triangle.detect_shape_for(3,4,2)).to eq Triangle::SCALENE }
  specify { expect(Triangle.detect_shape_for(3,2,4)).to eq Triangle::SCALENE }

  specify { expect(Triangle.detect_shape_for(1,2,3)).to eq Triangle::NOT_TRIANGLE }
  specify { expect(Triangle.detect_shape_for(0,0,0)).to eq Triangle::NOT_TRIANGLE }
  specify { expect(Triangle.detect_shape_for(1,0,0)).to eq Triangle::NOT_TRIANGLE }
  specify { expect(Triangle.detect_shape_for(0,1,0)).to eq Triangle::NOT_TRIANGLE }
  specify { expect(Triangle.detect_shape_for(0,0,1)).to eq Triangle::NOT_TRIANGLE }
  specify { expect(Triangle.detect_shape_for(-1,0,0)).to eq Triangle::NOT_TRIANGLE }
  specify { expect(Triangle.detect_shape_for(0, -1,0)).to eq Triangle::NOT_TRIANGLE }
  specify { expect(Triangle.detect_shape_for(0,0,-1)).to eq Triangle::NOT_TRIANGLE }
end

