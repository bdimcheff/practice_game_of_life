module GameOfLife
  class Grid 
    # takes a grid multidimensional array like 
    # [[".", "."]["x", "."]]
    def initialize(grid_array)
      @grid = grid_array.transpose
    end
    
    def [](x,y)
      @grid[x][y]
    end
    
    def set(x,y)
      @grid[x][y] = "x"
    end
    
    def clear(x,y)
      @grid[x][y] = "."
    end
    
    def alive?(x,y)
      @grid[x][y] == "x"
    end
    
    
    def neighbors(x,y)
      alive_as_num(x-1, y-1) +
      alive_as_num(x,   y-1) +
      alive_as_num(x+1, y-1) +
      alive_as_num(x-1, y) +
      alive_as_num(x+1, y) +
      alive_as_num(x-1, y+1) +
      alive_as_num(x,   y+1) +
      alive_as_num(x+1, y+1) 
    end
    
    private
    def alive_as_num(x,y)
      alive?(x,y) ? 1 : 0
    end
  end
  
  class Game
    attr_accessor :grid
    
    # takes a GameOfLife::Grid
    def initialize(grid)
      @grid = grid
    end
    
    def evolve!
      alive = @grid.alive?(1,1)
      neighbors = @grid.neighbors(1,1)
      
      if alive && neighbors == 0
        @grid.clear(1,1)
      elsif neighbors == 3
        @grid.set(1,1)
      elsif neighbors > 3
        @grid.clear(1,1)
      end
    end
  end
end