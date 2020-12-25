module Inputs
  def self.get_inputs(day, real_data: true, &block)
    if real_data
      raw_inputs = File.read("data/day#{day}.txt")
    else
      raw_inputs = self.method("day#{day}").call
    end

    block.call(raw_inputs)
  end

  private
    def self.day1
    "1721\n979\n366\n299\n675\n1456"
    end
end
