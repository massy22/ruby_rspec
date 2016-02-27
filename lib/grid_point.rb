class GridPoint
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def to_string
    "(#{x},#{y})"
  end

  def same_pos?(grid_point)
    x == grid_point.x && y == grid_point.y
  end

  def neighbor?(grid_point)
    (x == grid_point.x && y == grid_point.y - 1) ||
    (x == grid_point.x - 1 && y == grid_point.y) ||
    (x == grid_point.x && y == grid_point.y + 1) ||
    (x == grid_point.x + 1 && y == grid_point.y)
  end
end
