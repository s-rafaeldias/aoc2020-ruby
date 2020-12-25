require_relative "inputs"

module Day01
  def self.part_one(real_data: true)
    entries = Array.new

    Inputs.get_inputs(1, real_data: real_data) { |raw_entries| entries = raw_entries.split("\n") }

    entries.each_index do |i|
      value1 = entries[i].to_i

      entries[i..].each_index do |j|
        return value1 * entries[j].to_i if value1 + entries[j].to_i == 2020
      end
    end

    nil
  end
end
