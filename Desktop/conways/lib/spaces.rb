class Space

  attr_reader :coordinates

  def initialize(x, y)
    @x = x
    @y = y
    @coordinates = [x,y]
  end
end
