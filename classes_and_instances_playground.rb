require 'pry'
class Refrigerator
  attr_reader :brand,
              :color,
              :temperature,
              :contents

  def initialize(brand, color, temperature, plugged_in, contents)
    @brand       = brand
    @color       = color
    @temperature = temperature
    @plugged_in  = plugged_in
    @contents    = contents
  end

  def temperature_in_celsius
    (@temperature - 32) * 5.0/9.0
  end

  def add_item(item)
    @contents << item
  end

  def color=(new_color)
    @color = new_color
  end
end

refrigerator_1  = Refrigerator.new("Maytag", "white", 36, true, ["leftover pizza", "yogurt", "soylent"])
p "Number 1: #{refrigerator_1}"

refrigerator_2   = Refrigerator.new("", "black", 40, true, [])
p "Number 2: #{refrigerator_2}"

refrigerator_3 = Refrigerator.new("", "black", 33, false, ["celery"])
p "Number 3: #{refrigerator_3}"


class Cups
end

wine_glass = Cups.new
p "Number 1: #{wine_glass}"

paper_cup = Cups.new
p "Number 2: #{paper_cup}"

coffee_cup = Cups.new
p "Number 3: #{coffee_cup}"

class Tables
end

dinner_table = Tables.new
p "Number 1: #{dinner_table}"

coffee_table = Tables.new
p "Number 2: #{coffee_table}"

round_table = Tables.new
p "Number 3: #{round_table}"

class Person
  attr_reader :hair_color, :eye_color, :height, :current_mood, :birthplace, :birthday

  def initialize(hair_color, eye_color, height, current_mood, birthplace, birthday)
    @hair_color = hair_color
    @eye_color = eye_color
    @height =  height
    @current_mood = current_mood
    @birthplace = birthplace
    @birthday = birthday
  end

  def age
    ((Time.now.to_f - @birthday.to_f)/31556952).round(1).to_s + " years"
  end
end

danny = Person.new("black", "dark brown", "6' 0", "excited", "Denver", Time.new(1988, 05, 20))

joseph = Person.new("brown", "hazel", "5' 8", "intrigued", "Utah", Time.new(1988, 01, 20))

george_washington = Person.new("white", "blue", "6' 3", "dead", "Virginia", "")

binding.pry

puts "dsfsdf"
