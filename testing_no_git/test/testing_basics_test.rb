require 'minitest/autorun'
require './lib/testing_basics.rb'

class TestingBasicsTest < Minitest::Test
  def test_it_exists
    assert TestingBasic.new
  end
end
