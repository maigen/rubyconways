require 'rspec'
require 'cell'
require 'spaces'
require 'board'

describe 'Cell' do
  describe 'initialize' do
    it 'initializes a class Cell' do
      test_cell = Cell.new()
      test_cell.should be_an_instance_of Cell
    end
    it 'is dead when it is initialized' do
      test_cell = Cell.new()
      test_cell.status.should eq false
    end
  end
end

describe 'Space' do
  describe 'initialize' do
    it 'is initialized with coordinates when the game starts' do
      test_space = Space.new(1,2)
      test_space.should be_an_instance_of Space
    end
  end
end

describe 'Board' do
  before do
    Board.clear
  end

  describe 'initialize' do
    it 'initializes a Board' do
      test_board = Board.new(4,4)
      test_board.should be_an_instance_of Board
    end
  end
  describe '.make_board' do
    it 'creates an array of spaces in this Board' do
      test_board = Board.make_board(3,3)
      test_board.should be_an_instance_of Board
      Board.all.length.should eq 9
    end
  end

  describe '.all' do
    it 'it is empty at first' do
      Board.all.should eq []
    end
  end

  describe '.clear' do
    it 'empties the saved array of spaces' do
      Board.make_board(4,4)
      Board.clear
      Board.all.should eq []
    end
  end

  # describe 'neighbors' do
  #   it 'is initialized with '
  #   it 'finds its own neighbors and returns them in an array' do
  #     test_space = Space.new(3,3)
  #     test_space.neighbors(3,3).should eq [[2,2], [2,3] , [2,4], [3,2], [3,4], [4,2], [4,3], [4,4]]
  #   end
  # end
end
