class Board
  attr_reader :spaces
  @@spaces = []

  def initialize(x_cells, y_cells)
    @x_cells = x_cells
    @y_cells = y_cells
    @@spaces = []
  end

  def Board.make_board(x_cells, y_cells)
    new_board = Board.new(x_cells, y_cells)

    for i in 1..x_cells do
      for j in 1..y_cells do
        @@spaces << [i,j]
      end
    end
    new_board
  end

  def Board.all
    @@spaces
  end

  def Board.clear
    @@spaces = []
  end

end
