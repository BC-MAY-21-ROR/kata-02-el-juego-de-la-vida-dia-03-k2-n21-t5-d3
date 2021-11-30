require './classes/grid.rb'

class Cells

  def generation(grid, grid2, row, col)
    for i in(1..row - 2)
      for j in (1..col - 2)
        alive_cells = 0
          for a in(-1..1)
            for b in (-1..1)
              alive_cells += grid[i - a][j - b]
            end
          end
          alive_cells -= grid[i][j]
          if grid[i][j] == 1 && alive_cells < 2
            grid2[i][j] = 0
          elsif grid[i][j] == 1 && alive_cells > 3
            grid2[i][j] = 0
          elsif grid[i][j].zero? && alive_cells == 3
            grid2[i][j] = 1
          else
            grid2[i][j] = grid[i][j]
          end
      end
    end
  end 
end