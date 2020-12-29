require "minitest/autorun"
require_relative "../lib/day02"

class TestDay02 < Minitest::Test
  def test_part_one_with_test_data
    assert_equal Day02.part_one(real_data: false), 2
  end

  def test_part_one_with_real_data
    assert_equal Day02.part_one, 469
  end

  def test_parte_two_with_test_data
    assert_equal 1, Day02.part_two(real_data: false)
  end

  def test_part_two_with_real_data
    assert_equal 267, Day02.part_two
  end
end
