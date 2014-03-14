class Space

  attr_reader :coordinates, :status

  def initialize(x, y)
    @x = x
    @y = y
    @status = false
    @coordinates = [x,y]
  end

  def life_change
    if @status == false
      @status = true
    else
      @status = false
    end
    @status
  end
end
