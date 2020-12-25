module Inputs
  def self.get_inputs(day, real_data: true, &block)
    if real_data
      raw_inputs = File.read("data/day#{day}.txt")
    else
      raw_inputs = """1721
979
366
299
675
1456"""
    end

    block.call(raw_inputs)
  end
end
