
class Grid

  attr_accessor :grid
  attr_accessor :grid2

    def initialize(c, r)
      @col = c
      @row = r
      @grid = Array.new(@col){ Array.new(@row) }
      @grid2 = Array.new(@col){ Array.new(@row) }

    end

    def generate_matrix
      (0..(@row-1)).each do |r|
        (0..(@col-1)).each do |c|
          num = rand(4)
          @grid2[c][r] = 0
          if num == 0
            @grid[c][r] = 1
          else
            @grid[c][r] = 0
          end
        end
      end
    end

    def draw(g)
      for i in(0..(@row-1))
        for j in (0..(@col-1))
          if g[i][j] == 1
            print('*')
          else
            print('.')
          end
        end
        print "\n"
      end
    end
end