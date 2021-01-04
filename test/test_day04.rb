require "minitest/autorun"
require_relative "../lib/day04"

class TestDay04 < Minitest::Test
  def test_part_one_with_test_data
    skip
    assert_equal 2, Day04.part_one(real_data: false)
  end

  def test_part_one_with_real_data
    skip
    assert_equal 190, Day04.part_one
  end

  def test_part_two_with_real_data
    assert_equal 121, Day04.part_two
  end
end
