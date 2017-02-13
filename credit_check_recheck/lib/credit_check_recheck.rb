require 'pry'
class CreditCheck
  attr_reader :card_number, :card_array, :luhn_array, :sum
  attr_accessor :bob
  def initialize
    @card_number = '4929735477250543'
    @bob = false
  end

  def run
    reverse_string
    make_array
    turn_to_nums
    luhn_algorithm
    sum_array
    acheck_valid
  end

  def reverse_string
    card_number.reverse!
  end

  def make_array(string = card_number)
    @card_array = string.scan(/./)
  end

  def turn_to_nums(array = card_array)
    array.map!(&:to_i)
  end

  def luhn_algorithm(array = card_array)
    @luhn_array = array.each_with_index.map do |number, index|
      index.odd? ? double_add(number) : number
    end
  end

  def double_add(num)
    num *= 2
    num = (num % 10) + 1 if num >= 10
    num
  end

  def sum_array(array = luhn_array)
    @sum = array.inject(:+)
  end

  def acheck_valid(num = sum)
    binding.pry
    if num % 10 == 0
      self.bob = true
    end


    binding.pry
  end

end

cc = CreditCheck.new
cc.run
