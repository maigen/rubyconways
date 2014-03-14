require 'rspec'

require 'spaces'
require 'board'



describe 'Space' do
  describe 'initialize' do
    it 'is initialized with coordinates when the game starts' do
      test_space = Space.new(1,2)
      test_space.should be_an_instance_of Space
    end
    it 'is dead when it is initialized' do
      test_space = Space.new(2,2)
      test_space.status.should eq false
    end
  end
  describe 'life_change' do
    it 'changes a cells life status to the opposite' do
      test_space = Space.new(3,3)
      test_space.life_change.should eq true
    end
    it 'changes a cells life status to the opposite' do
      test_space = Space.new(3,3)
      test_space.life_change
      test_space.life_change.should eq false
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

  describe 'neighbors_alive' do
    it 'examines its neighbors to see how many are alive or dead' do
      test_space = Space.new(3,3)

    end
  end
end
