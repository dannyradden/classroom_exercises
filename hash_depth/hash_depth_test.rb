require 'minitest/autorun'
require 'minitest/pride'
require_relative 'hash_depth'

class HashDepth < MiniTest::Test

  def test_it_can_find_one_level_of_depth
    hash = { key: 'value' }

    assert_equal 1, HashDepth.new.hash_depth(hash)
  end

end
