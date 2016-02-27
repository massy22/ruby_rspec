class GridPoints
  attr_reader :first, :second

  def initialize(first, second)
    @first = first
    @second = second
  end

  def contain?(grid_point)
    first.same_pos?(grid_point) || second.same_pos?(grid_point)
  end

  def connected?
    first.neighbor?(second)
  end
end
