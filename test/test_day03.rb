require "minitest/autorun"
require_relative "../lib/day03"

class TestDay03 < Minitest::Test
  def test_part_one_with_test_data
    assert_equal 7, Day03.part_one(real_data: false)
  end

  def test_part_one_with_real_data
    assert_equal 181, Day03.part_one
  end

  def test_parte_two_with_test_data
    assert_equal 336, Day03.part_two(real_data: false)
  end

  def test_part_two_with_real_data
    assert_equal 1260601650, Day03.part_two
  end
end
