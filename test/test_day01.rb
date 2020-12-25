require "minitest/autorun"
require_relative "../lib/day01"

class TestDay01 < Minitest::Test
  def test_part_one_with_test_data
    assert_equal Day01.part_one(real_data: false), 514579
  end

  def test_part_one_with_real_data
    assert_equal Day01.part_one, 494475
  end
end
