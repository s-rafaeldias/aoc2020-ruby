require_relative "inputs"
require 'set'

module Day01
  def self.part_one(real_data: true)
    entries = Array.new

    Inputs.get(1, real_data: real_data) { |raw_entries| entries = raw_entries.split("\n") }

    (0..entries.length - 1).each do |i|
      v1 = entries[i].to_i

      (i + 1..entries.length - 1).each do |j|
        v2 = entries[j].to_i
        return v1 * v2 if v1 + v2 == 2020
      end
    end

    nil
  end

  def self.part_two(real_data: true)
    entries = Array.new

    Inputs.get(1, real_data: real_data) { |raw_entries| entries = raw_entries.split("\n") }
    entries = Set.new(entries).to_a

    (0..entries.length - 1).each do |i|
      v1 = entries[i].to_i

      (i + 1..entries.length - 1).each do |j|
        v2 = entries[j].to_i

        (i + 2..entries.length - 1).each do |k|
          v3 = entries[k].to_i
          return v1 * v2 * v3 if v1 + v2 + v3 == 2020
        end
      end
    end

    nil
  end
end
