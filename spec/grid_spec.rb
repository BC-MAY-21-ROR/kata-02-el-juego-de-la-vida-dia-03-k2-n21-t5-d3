require '../classes/grid'

RSpec.describe initialize do
  context "initialize" do
    it "initialize the rows, colums and grids" do
      grid_example=Grid.new(3,3)
      expect(grid_example.grid2.length * grid_example.grid2[0].length).to eq 9

    end
  end
end
