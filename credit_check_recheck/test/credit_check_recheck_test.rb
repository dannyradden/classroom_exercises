require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check_recheck'

class CreditCheckTest < Minitest::Test
  def test_it_exists
    assert CreditCheck.new
  end

  def test_make_array
    cc = CreditCheck.new
    assert_equal ["1","2","3","4"], cc.make_array("1234")
  end

  def test_turn_string_to_nums
    cc = CreditCheck.new
    assert_equal [1,2,3,4], cc.turn_to_nums(["1","2","3","4"])
  end

  def test_luhn_algorithm
    cc = CreditCheck.new
    assert_equal [2,8,6,7], cc.luhn_algorithm([2,4,6,8])
  end

  def test_sum_array
    cc = CreditCheck.new
    assert_equal [2,8,6,7].inject(:+), cc.sum_array([2,8,6,7])
  end

  def test_check_valid
    cc = CreditCheck.new
    cc.check_valid(100)
    assert cc.valid
  end
end
