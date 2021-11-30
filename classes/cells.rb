require './classes/grid.rb'

class Cells

  def generation(grid, grid2, row, col)
    for i in(1..row - 2)
      for j in (1..col - 2)
        alive_cells = 0
          for a in(-1..1)
            for b in (-1..1)
              alive_cells += grid[j + a][i + b] if i + a >= 0 && j + b >=0
            end
          end
          alive_cells -= grid[j][i]
          if grid[j][i] == 1 && alive_cells < 2
            grid2[j][i] = 0
          elsif grid[j][i] == 1 && alive_cells > 3
            grid2[j][i] = 0
          elsif grid[j][i].zero? && alive_cells == 3
            grid2[j][i] = 1
          else
            grid2[j][i] = grid[j][i]
          end
      end
    end
  end
end