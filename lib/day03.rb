require_relative "inputs"

module Day03
  def self.part_one(real_data: true)
    levels = Array.new
    Inputs.get(3, real_data: real_data) { |l| levels = l.split "\n" }

    go_down_slope levels, 3, 1
  end

  def self.part_two(real_data: true)
    levels = Array.new
    Inputs.get(3, real_data: real_data) { |l| levels = l.split "\n" }

    total = 1
    [[1,1], [3,1], [5,1], [7,1], [1,2]].each do |slope|
      right, down = slope
      total *= go_down_slope levels, right, down
    end

    total
  end

  private
    def self.go_down_slope(levels, right, down)
      max_width = levels[0].length
      x_position = 0
      y_position = 0
      tree_count = 0

      while y_position < levels.count do
        tree_count += 1 if levels[y_position][x_position] == "#"

        x_position += right
        x_position -= max_width if x_position >= max_width
        y_position += down
      end

      tree_count
    end
end
