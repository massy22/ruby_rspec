require 'pry'

describe GridPoints do

  describe '#contain?' do
    let(:grid_point_1) { GridPoint.new(1, 1) }
    let(:grid_point_2) { GridPoint.new(1, 2) }
    let(:grid_points) { GridPoints.new(grid_point_1, grid_point_2) }

    subject { grid_points.contain?(grid_point_3) }

    context '引数の格子点を含むとき' do
      context '一つ目の格子点に一致するとき' do
        let(:grid_point_3) { GridPoint.new(1, 1) }
        it { expect(subject).to be true }
      end

      context '2つ目の格子点に一致するとき' do
        let(:grid_point_3) { GridPoint.new(1, 2) }
        it { expect(subject).to be true }
      end
    end

    context '引数の格子点を含まないとき' do
      let(:grid_point_3) { GridPoint.new(1, 3) }

      it { expect(subject).to be false }
    end
  end
end
