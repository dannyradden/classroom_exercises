
class ReversePolishNotation
  attr_accessor :number_array, :answer, :input
  def initialize
    @number_array = []
    @answer = ""
    @input = ""
  end


  def operate
    @input = gets.chomp
    convert
    analyze
    puts answer
  end

  def convert
    @number_array = input.split
    @number_array.delete(" ")
  end

  def analyze
    if @number_array[2] == "+"
      add
    elsif @number_array[2] == "-"
      subtract
    end
  end

  def add
    @answer = number_array[0].to_i + number_array[1].to_i
  end

  def subtract
    @answer = number_array[0].to_i - number_array[1].to_i
  end
end

rpn = ReversePolishNotation.new
rpn.operate
